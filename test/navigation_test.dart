import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:linkdy/i18n/strings.g.dart';
import 'package:linkdy/main.dart';
import 'package:linkdy/models/server_instance.dart';
import 'package:linkdy/providers/api_client.provider.dart';
import 'package:linkdy/providers/receive_sharing_intent_url.provider.dart';
import 'package:linkdy/providers/router.provider.dart';
import 'package:linkdy/providers/shared_preferences.provider.dart';
import 'package:linkdy/router/paths.dart';
import 'package:linkdy/screens/bookmarks/ui/bookmarks.dart';
import 'package:linkdy/screens/bookmarks/ui/bookmark_form_modal.dart';
import 'package:linkdy/screens/onboarding/ui/onboarding.dart';
import 'package:linkdy/services/api_client.dart';
import 'package:listen_sharing_intent/listen_sharing_intent.dart';
import 'package:shared_preferences/shared_preferences.dart';

class _ConfiguredApiClient extends ApiClient {
  @override
  ApiClientService build() {
    return ApiClientService(
      serverInstance: const ServerInstance(
        id: 'test',
        method: 'http',
        ipDomain: 'localhost',
        token: 'test',
      ),
      dioInstance: Dio()
        ..interceptors.add(
          InterceptorsWrapper(
            onRequest: (options, handler) => handler.resolve(
              Response(
                requestOptions: options,
                statusCode: 200,
                data: {'count': 0, 'results': <dynamic>[]},
              ),
            ),
          ),
        ),
    );
  }
}

void main() {
  Future<ProviderContainer> openApp(
    WidgetTester tester, {
    required bool configured,
    List<SharedMediaFile> initialMedia = const [],
    Stream<List<SharedMediaFile>> mediaStream = const Stream.empty(),
  }) async {
    tester.view.physicalSize = const Size(400, 900);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    SharedPreferences.setMockInitialValues({});
    ReceiveSharingIntent.setMockValues(initialMedia: initialMedia, mediaStream: mediaStream);
    final container = ProviderContainer(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(await SharedPreferences.getInstance()),
        if (configured) apiClientProvider.overrideWith(_ConfiguredApiClient.new),
      ],
    );
    addTearDown(container.dispose);
    addTearDown(container.read(routerProvider).dispose);
    await tester.pumpWidget(
      UncontrolledProviderScope(
        container: container,
        child: TranslationProvider(child: const MyApp()),
      ),
    );
    await tester.pumpAndSettle();
    return container;
  }

  testWidgets('error page Home recovers to bookmarks when configured', (tester) async {
    final container = await openApp(tester, configured: true);
    container.read(routerProvider).go('/missing');
    await tester.pumpAndSettle();
    expect(find.text('Page Not Found'), findsOneWidget);

    await tester.tap(find.text('Go to home page'));
    await tester.pumpAndSettle();

    expect(find.byType(BookmarksScreen), findsOneWidget);
    expect(find.text('Page Not Found'), findsNothing);
    expect(container.read(routerProvider).routeInformationProvider.value.uri.path, RoutesPaths.bookmarks);
  });

  testWidgets('root navigation keeps an unconfigured app in onboarding', (tester) async {
    final container = await openApp(tester, configured: false);
    container.read(routerProvider).go('/');
    await tester.pumpAndSettle();

    expect(find.byType(Onboarding), findsOneWidget);
    expect(find.text('Page Not Found'), findsNothing);
    expect(container.read(routerProvider).routeInformationProvider.value.uri.path, RoutesPaths.onboarding);
  });

  testWidgets('initial share opens one form and is consumed', (tester) async {
    final container = await openApp(
      tester,
      configured: true,
      initialMedia: [SharedMediaFile(path: 'https://example.com', type: SharedMediaType.url)],
    );

    expect(find.byType(BookmarkFormModal), findsOneWidget);
    expect(find.widgetWithText(TextFormField, 'https://example.com'), findsOneWidget);
    expect(container.read(receiveSharingIntentUrlProvider), isNull);
    expect(await ReceiveSharingIntent.instance.getInitialMedia(), isEmpty);

    await tester.tap(find.byType(CloseButton));
    await tester.pumpAndSettle();
    container.read(routerProvider).go(RoutesPaths.bookmarks);
    await tester.pumpAndSettle();
    expect(find.byType(BookmarkFormModal), findsNothing);
  });

  testWidgets('cancelled share does not replay when a new stream URL arrives', (tester) async {
    final shares = StreamController<List<SharedMediaFile>>();
    addTearDown(shares.close);
    final container = await openApp(tester, configured: true, mediaStream: shares.stream);
    expect(find.byType(BookmarkFormModal), findsNothing);

    shares.add([SharedMediaFile(path: 'https://example.com', type: SharedMediaType.url)]);
    await tester.pumpAndSettle();
    expect(find.byType(BookmarkFormModal), findsOneWidget);
    await tester.tap(find.byType(CloseButton));
    await tester.pumpAndSettle();

    shares.add([
      SharedMediaFile(path: 'https://example.com/?source=linkdy&case=warm#part-2', type: SharedMediaType.url),
    ]);
    await tester.pumpAndSettle();
    expect(find.byType(BookmarkFormModal), findsOneWidget);
    expect(
      find.widgetWithText(TextFormField, 'https://example.com/?source=linkdy&case=warm#part-2'),
      findsOneWidget,
    );
    expect(container.read(receiveSharingIntentUrlProvider), isNull);
  });
}
