import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:linkdy/constants/global_keys.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:linkdy/config/theme.dart';
import 'package:linkdy/constants/colors.dart';
import 'package:linkdy/i18n/strings.g.dart';
import 'package:linkdy/providers/router_provider.dart';
import 'package:linkdy/providers/shared_preferences_provider.dart';
import 'package:linkdy/utils/http_overrides.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

  LocaleSettings.useDeviceLocale();

  HttpOverrides.global = MyHttpOverrides();

  final sharedPreferences = await SharedPreferences.getInstance();

  runApp(
    TranslationProvider(
      child: ProviderScope(
        overrides: [
          sharedPreferencesProvider.overrideWithValue(sharedPreferences),
        ],
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DynamicColorBuilder(
      builder: (lightDynamic, darkDynamic) => MaterialApp.router(
        title: 'Linkdy',
        theme: lightDynamic != null ? lightTheme(lightDynamic) : lightThemeOldVersions(colors[0]),
        darkTheme: darkDynamic != null ? darkTheme(darkDynamic) : darkThemeOldVersions(colors[0]),
        locale: TranslationProvider.of(context).flutterLocale,
        supportedLocales: AppLocaleUtils.supportedLocales,
        localizationsDelegates: GlobalMaterialLocalizations.delegates,
        debugShowCheckedModeBanner: false,
        scaffoldMessengerKey: scaffoldMessengerGlobalKey,
        routerConfig: ref.watch(routerProvider),
      ),
    );
  }
}
