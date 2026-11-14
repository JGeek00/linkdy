import 'package:flutter/material.dart';
import 'package:material_ui/material_ui.dart' as mui;

/// Puente temporal: dynamic_color 2.x entrega el [ColorScheme] del paquete
/// material_ui (clase distinta a la de Flutter aunque se llame igual).
/// Convierte al [ColorScheme] de Flutter en el borde, hasta que se migre
/// la app completa a material_ui.
ColorScheme toFlutterColorScheme(mui.ColorScheme scheme) {
  final base = ColorScheme.fromSeed(
    seedColor: scheme.primary,
    brightness: scheme.brightness,
  );
  return base.copyWith(
    primary: scheme.primary,
    onPrimary: scheme.onPrimary,
    primaryContainer: scheme.primaryContainer,
    onPrimaryContainer: scheme.onPrimaryContainer,
    secondary: scheme.secondary,
    onSecondary: scheme.onSecondary,
    secondaryContainer: scheme.secondaryContainer,
    onSecondaryContainer: scheme.onSecondaryContainer,
    tertiary: scheme.tertiary,
    onTertiary: scheme.onTertiary,
    tertiaryContainer: scheme.tertiaryContainer,
    onTertiaryContainer: scheme.onTertiaryContainer,
    error: scheme.error,
    onError: scheme.onError,
    errorContainer: scheme.errorContainer,
    onErrorContainer: scheme.onErrorContainer,
    surface: scheme.surface,
    onSurface: scheme.onSurface,
    surfaceVariant: scheme.surfaceVariant,
    onSurfaceVariant: scheme.onSurfaceVariant,
    outline: scheme.outline,
    outlineVariant: scheme.outlineVariant,
    shadow: scheme.shadow,
    scrim: scheme.scrim,
    inverseSurface: scheme.inverseSurface,
    onInverseSurface: scheme.onInverseSurface,
    inversePrimary: scheme.inversePrimary,
    surfaceTint: scheme.surfaceTint,
  );
}

ThemeData lightTheme(ColorScheme? dynamicColorScheme) => ThemeData(
      useMaterial3: true,
      colorScheme: dynamicColorScheme,
      snackBarTheme: SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        elevation: 4,
      ),
      brightness: Brightness.light,
      listTileTheme: ListTileThemeData(
        tileColor: Colors.transparent,
        textColor:
            dynamicColorScheme != null ? dynamicColorScheme.onSurfaceVariant : const Color.fromRGBO(117, 117, 117, 1),
        iconColor:
            dynamicColorScheme != null ? dynamicColorScheme.onSurfaceVariant : const Color.fromRGBO(117, 117, 117, 1),
      ),
      cardTheme: CardThemeData(surfaceTintColor: dynamicColorScheme?.surfaceTint),
      popupMenuTheme: PopupMenuThemeData(surfaceTintColor: dynamicColorScheme?.surfaceTint),
      navigationBarTheme: NavigationBarThemeData(surfaceTintColor: dynamicColorScheme?.surfaceTint),
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: {
          TargetPlatform.android: PredictiveBackPageTransitionsBuilder(),
        },
      ),
    );

ThemeData darkTheme(ColorScheme? dynamicColorScheme) => ThemeData(
      useMaterial3: true,
      colorScheme: dynamicColorScheme,
      snackBarTheme: SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        elevation: 4,
      ),
      brightness: Brightness.dark,
      listTileTheme: ListTileThemeData(
        tileColor: Colors.transparent,
        textColor:
            dynamicColorScheme != null ? dynamicColorScheme.onSurfaceVariant : const Color.fromRGBO(187, 187, 187, 1),
        iconColor:
            dynamicColorScheme != null ? dynamicColorScheme.onSurfaceVariant : const Color.fromRGBO(187, 187, 187, 1),
      ),
      cardTheme: CardThemeData(surfaceTintColor: dynamicColorScheme?.surfaceTint),
      popupMenuTheme: PopupMenuThemeData(surfaceTintColor: dynamicColorScheme?.surfaceTint),
      navigationBarTheme: NavigationBarThemeData(surfaceTintColor: dynamicColorScheme?.surfaceTint),
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: {
          TargetPlatform.android: PredictiveBackPageTransitionsBuilder(),
        },
      ),
    );

ThemeData lightThemeOldVersions(MaterialColor primaryColor) => ThemeData(
      useMaterial3: true,
      colorSchemeSeed: primaryColor,
      snackBarTheme: SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        elevation: 4,
      ),
      listTileTheme: const ListTileThemeData(
        tileColor: Colors.transparent,
        textColor: Color.fromRGBO(117, 117, 117, 1),
        iconColor: Color.fromRGBO(117, 117, 117, 1),
      ),
      brightness: Brightness.light,
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: {
          TargetPlatform.android: PredictiveBackPageTransitionsBuilder(),
        },
      ),
    );

ThemeData darkThemeOldVersions(MaterialColor primaryColor) => ThemeData(
      useMaterial3: true,
      colorSchemeSeed: primaryColor,
      snackBarTheme: SnackBarThemeData(
        contentTextStyle: const TextStyle(color: Colors.white),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        elevation: 4,
      ),
      listTileTheme: const ListTileThemeData(
        tileColor: Colors.transparent,
        textColor: Color.fromRGBO(187, 187, 187, 1),
        iconColor: Color.fromRGBO(187, 187, 187, 1),
      ),
      brightness: Brightness.dark,
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: {
          TargetPlatform.android: PredictiveBackPageTransitionsBuilder(),
        },
      ),
    );
