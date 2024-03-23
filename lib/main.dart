import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:receive_sharing_intent/receive_sharing_intent.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:linkdy/constants/global_keys.dart';
import 'package:linkdy/providers/app_status.provider.dart';
import 'package:linkdy/router/paths.dart';
import 'package:linkdy/providers/app_info.provider.dart';
import 'package:linkdy/providers/receive_sharing_intent_url.provider.dart';
import 'package:linkdy/config/theme.dart';
import 'package:linkdy/constants/colors.dart';
import 'package:linkdy/i18n/strings.g.dart';
import 'package:linkdy/providers/router.provider.dart';
import 'package:linkdy/providers/shared_preferences.provider.dart';
import 'package:linkdy/utils/http_overrides.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

  LocaleSettings.useDeviceLocale();

  HttpOverrides.global = MyHttpOverrides();

  await dotenv.load(fileName: '.env');

  final sharedPreferences = await SharedPreferences.getInstance();

  final appInfo = await PackageInfo.fromPlatform();

  void startApp() => runApp(
        TranslationProvider(
          child: ProviderScope(
            overrides: [
              sharedPreferencesProvider.overrideWithValue(sharedPreferences),
              appInfoProvider.overrideWithValue(appInfo),
            ],
            child: const MyApp(),
          ),
        ),
      );

  if ((kReleaseMode && (dotenv.env['SENTRY_DSN'] != null && dotenv.env['SENTRY_DSN'] != "")) ||
      (dotenv.env['ENABLE_SENTRY'] == "true" && (dotenv.env['SENTRY_DSN'] != null && dotenv.env['SENTRY_DSN'] != ""))) {
    SentryFlutter.init(
      (options) {
        options.dsn = dotenv.env['SENTRY_DSN'];
        options.sendDefaultPii = false;
      },
      appRunner: () => startApp(),
    );
  } else {
    startApp();
  }
}

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedColor = ref.watch(appStatusProvider).selectedColor;
    final useDynamicColor = ref.watch(appStatusProvider).useDynamicTheme;

    useEffect(
      () {
        // When app is on background
        ReceiveSharingIntent.getMediaStream().listen(
          (value) {
            if (value.isNotEmpty) {
              ref.read(receiveSharingIntentUrlProvider.notifier).setValue(value[0].path);
              ref.read(routerProvider).go(RoutesPaths.bookmarks);
            }
          },
          onError: (e, stackTrace) => Sentry.captureException(e, stackTrace: stackTrace),
        );

        // When app is closed
        ReceiveSharingIntent.getInitialMedia().then((value) {
          if (value.isNotEmpty) {
            ref.read(receiveSharingIntentUrlProvider.notifier).setValue(value[0].path);
            ref.read(routerProvider).go(RoutesPaths.bookmarks);
          }
          ReceiveSharingIntent.reset();
        });

        return null;
      },
      [],
    );

    return DynamicColorBuilder(
      builder: (lightDynamic, darkDynamic) {
        ref.read(appStatusProvider.notifier).setSupportsDynamicTheme(lightDynamic != null && darkDynamic != null);
        return MaterialApp.router(
          title: 'Linkdy',
          theme: lightDynamic != null
              ? useDynamicColor == true
                  ? lightTheme(lightDynamic)
                  : lightThemeOldVersions(colors[selectedColor])
              : lightThemeOldVersions(colors[selectedColor]),
          darkTheme: darkDynamic != null
              ? useDynamicColor == true
                  ? darkTheme(darkDynamic)
                  : darkThemeOldVersions(colors[selectedColor])
              : darkThemeOldVersions(colors[selectedColor]),
          themeMode: ref.watch(selectedThemeProvider),
          locale: TranslationProvider.of(context).flutterLocale,
          supportedLocales: AppLocaleUtils.supportedLocales,
          localizationsDelegates: GlobalMaterialLocalizations.delegates,
          debugShowCheckedModeBanner: false,
          scaffoldMessengerKey: ScaffoldMessengerKeys.root,
          routerConfig: ref.watch(routerProvider),
        );
      },
    );
  }
}
