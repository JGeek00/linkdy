import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:linkdy/i18n/strings.g.dart';
import 'package:linkdy/main.dart';
import 'package:linkdy/models/server_instance.dart';
import 'package:linkdy/providers/api_client.provider.dart';
import 'package:linkdy/providers/router.provider.dart';
import 'package:linkdy/providers/server_instances.provider.dart';
import 'package:linkdy/providers/shared_preferences.provider.dart';
import 'package:linkdy/screens/bookmarks/ui/bookmarks.dart';
import 'package:linkdy/screens/onboarding/ui/onboarding.dart';
import 'package:listen_sharing_intent/listen_sharing_intent.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  test('saveNewInstance persists the connection before returning', () async {
    SharedPreferences.setMockInitialValues({});
    final prefs = await SharedPreferences.getInstance();
    final container = ProviderContainer(
      overrides: [sharedPreferencesProvider.overrideWithValue(prefs)],
    );
    addTearDown(container.dispose);

    const instance = ServerInstance(
      id: 'test-id',
      method: 'https',
      ipDomain: 'example.com',
      token: 'abc',
    );
    await container.read(serverInstancesProvider.notifier).saveNewInstance(instance);

    final stored = prefs.getStringList('serversInstances');
    expect(stored, isNotNull, reason: 'the connection must survive an app restart');
    expect(stored, hasLength(1));
    expect(
      ServerInstance.fromJson(jsonDecode(stored!.first) as Map<String, dynamic>).token,
      'abc',
    );
    expect(container.read(apiClientProvider), isNotNull);
  });

  testWidgets('a stored connection boots into bookmarks, not onboarding', (tester) async {
    tester.view.physicalSize = const Size(400, 900);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    const stored = ServerInstance(
      id: 'test-id',
      method: 'http',
      ipDomain: 'localhost',
      token: 'test-token',
    );
    SharedPreferences.setMockInitialValues({
      'serversInstances': [jsonEncode(stored.toJson())],
    });
    ReceiveSharingIntent.setMockValues(initialMedia: const [], mediaStream: const Stream.empty());

    final container = ProviderContainer(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(await SharedPreferences.getInstance()),
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

    expect(find.byType(BookmarksScreen), findsOneWidget);
    expect(find.byType(Onboarding), findsNothing);
  });
}
