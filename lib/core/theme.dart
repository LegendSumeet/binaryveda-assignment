import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff8f4a4d),
      surfaceTint: Color(0xff8f4a4d),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffffdada),
      onPrimaryContainer: Color(0xff733337),
      secondary: Color(0xff8d4a5a),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffffd9df),
      onSecondaryContainer: Color(0xff713343),
      tertiary: Color(0xff844c73),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffffd7ef),
      onTertiaryContainer: Color(0xff69345b),
      error: Color(0xff8f4c32),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdbcf),
      onErrorContainer: Color(0xff71361e),
      surface: Color(0xfffff8f9),
      onSurface: Color(0xff201a1e),
      onSurfaceVariant: Color(0xff524346),
      outline: Color(0xff847375),
      outlineVariant: Color(0xffd6c2c4),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff362e32),
      inversePrimary: Color(0xffffb3b5),
      primaryFixed: Color(0xffffdada),
      onPrimaryFixed: Color(0xff3b080f),
      primaryFixedDim: Color(0xffffb3b5),
      onPrimaryFixedVariant: Color(0xff733337),
      secondaryFixed: Color(0xffffd9df),
      onSecondaryFixed: Color(0xff3a0719),
      secondaryFixedDim: Color(0xffffb1c2),
      onSecondaryFixedVariant: Color(0xff713343),
      tertiaryFixed: Color(0xffffd7ef),
      onTertiaryFixed: Color(0xff36072d),
      tertiaryFixedDim: Color(0xfff6b2df),
      onTertiaryFixedVariant: Color(0xff69345b),
      surfaceDim: Color(0xffe4d7dc),
      surfaceBright: Color(0xfffff8f9),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffef0f6),
      surfaceContainer: Color(0xfff8eaf0),
      surfaceContainerHigh: Color(0xfff2e5ea),
      surfaceContainerHighest: Color(0xffecdfe4),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff5e2327),
      surfaceTint: Color(0xff8f4a4d),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffa1585b),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff5c2233),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff9e5869),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff562449),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff945a83),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff5c260f),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffa05b40),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f9),
      onSurface: Color(0xff160f13),
      onSurfaceVariant: Color(0xff403335),
      outline: Color(0xff5e4f51),
      outlineVariant: Color(0xff79696c),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff362e32),
      inversePrimary: Color(0xffffb3b5),
      primaryFixed: Color(0xffa1585b),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff844044),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff9e5869),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff824051),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff945a83),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff794269),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd0c3c9),
      surfaceBright: Color(0xfffff8f9),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffef0f6),
      surfaceContainer: Color(0xfff2e5ea),
      surfaceContainerHigh: Color(0xffe7d9df),
      surfaceContainerHighest: Color(0xffdbced4),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff51191e),
      surfaceTint: Color(0xff8f4a4d),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff753539),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff501829),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff743545),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff4a1a3f),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff6b375d),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4f1c06),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff743820),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f9),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff36292b),
      outlineVariant: Color(0xff544548),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff362e32),
      inversePrimary: Color(0xffffb3b5),
      primaryFixed: Color(0xff753539),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff591f24),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff743545),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff581f2f),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff6b375d),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff512045),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffc2b6bb),
      surfaceBright: Color(0xfffff8f9),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffbedf3),
      surfaceContainer: Color(0xffecdfe4),
      surfaceContainerHigh: Color(0xffded1d6),
      surfaceContainerHighest: Color(0xffd0c3c9),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffb3b5),
      surfaceTint: Color(0xffffb3b5),
      onPrimary: Color(0xff561d22),
      primaryContainer: Color(0xff733337),
      onPrimaryContainer: Color(0xffffdada),
      secondary: Color(0xffffb1c2),
      onSecondary: Color(0xff551d2d),
      secondaryContainer: Color(0xff713343),
      onSecondaryContainer: Color(0xffffd9df),
      tertiary: Color(0xfff6b2df),
      onTertiary: Color(0xff4f1e43),
      tertiaryContainer: Color(0xff69345b),
      onTertiaryContainer: Color(0xffffd7ef),
      error: Color(0xffffb59a),
      onError: Color(0xff55200a),
      errorContainer: Color(0xff71361e),
      onErrorContainer: Color(0xffffdbcf),
      surface: Color(0xff181215),
      onSurface: Color(0xffecdfe4),
      onSurfaceVariant: Color(0xffd6c2c4),
      outline: Color(0xff9e8c8f),
      outlineVariant: Color(0xff524346),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffecdfe4),
      inversePrimary: Color(0xff8f4a4d),
      primaryFixed: Color(0xffffdada),
      onPrimaryFixed: Color(0xff3b080f),
      primaryFixedDim: Color(0xffffb3b5),
      onPrimaryFixedVariant: Color(0xff733337),
      secondaryFixed: Color(0xffffd9df),
      onSecondaryFixed: Color(0xff3a0719),
      secondaryFixedDim: Color(0xffffb1c2),
      onSecondaryFixedVariant: Color(0xff713343),
      tertiaryFixed: Color(0xffffd7ef),
      onTertiaryFixed: Color(0xff36072d),
      tertiaryFixedDim: Color(0xfff6b2df),
      onTertiaryFixedVariant: Color(0xff69345b),
      surfaceDim: Color(0xff181215),
      surfaceBright: Color(0xff3f373b),
      surfaceContainerLowest: Color(0xff120c10),
      surfaceContainerLow: Color(0xff201a1e),
      surfaceContainer: Color(0xff251e22),
      surfaceContainerHigh: Color(0xff2f282c),
      surfaceContainerHighest: Color(0xff3a3337),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffd1d2),
      surfaceTint: Color(0xffffb3b5),
      onPrimary: Color(0xff481218),
      primaryContainer: Color(0xffcb7a7e),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffffd1d9),
      onSecondary: Color(0xff481222),
      secondaryContainer: Color(0xffc87a8c),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffffceec),
      onTertiary: Color(0xff421338),
      tertiaryContainer: Color(0xffbc7da8),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffd3c3),
      onError: Color(0xff471602),
      errorContainer: Color(0xffca7d60),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff181215),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffedd7da),
      outline: Color(0xffc1adb0),
      outlineVariant: Color(0xff9e8c8f),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffecdfe4),
      inversePrimary: Color(0xff743438),
      primaryFixed: Color(0xffffdada),
      onPrimaryFixed: Color(0xff2c0006),
      primaryFixedDim: Color(0xffffb3b5),
      onPrimaryFixedVariant: Color(0xff5e2327),
      secondaryFixed: Color(0xffffd9df),
      onSecondaryFixed: Color(0xff2c000e),
      secondaryFixedDim: Color(0xffffb1c2),
      onSecondaryFixedVariant: Color(0xff5c2233),
      tertiaryFixed: Color(0xffffd7ef),
      onTertiaryFixed: Color(0xff280021),
      tertiaryFixedDim: Color(0xfff6b2df),
      onTertiaryFixedVariant: Color(0xff562449),
      surfaceDim: Color(0xff181215),
      surfaceBright: Color(0xff4b4247),
      surfaceContainerLowest: Color(0xff0b0609),
      surfaceContainerLow: Color(0xff221c20),
      surfaceContainer: Color(0xff2d262a),
      surfaceContainerHigh: Color(0xff383035),
      surfaceContainerHighest: Color(0xff443b40),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffeceb),
      surfaceTint: Color(0xffffb3b5),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffffadaf),
      onPrimaryContainer: Color(0xff220003),
      secondary: Color(0xffffebee),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffffabbd),
      onSecondaryContainer: Color(0xff210009),
      tertiary: Color(0xffffebf4),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xfff2aedb),
      onTertiaryContainer: Color(0xff1e0018),
      error: Color(0xffffece6),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffb092),
      onErrorContainer: Color(0xff1c0400),
      surface: Color(0xff181215),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xffffebee),
      outlineVariant: Color(0xffd2bec0),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffecdfe4),
      inversePrimary: Color(0xff743438),
      primaryFixed: Color(0xffffdada),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffffb3b5),
      onPrimaryFixedVariant: Color(0xff2c0006),
      secondaryFixed: Color(0xffffd9df),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffffb1c2),
      onSecondaryFixedVariant: Color(0xff2c000e),
      tertiaryFixed: Color(0xffffd7ef),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xfff6b2df),
      onTertiaryFixedVariant: Color(0xff280021),
      surfaceDim: Color(0xff181215),
      surfaceBright: Color(0xff574e52),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff251e22),
      surfaceContainer: Color(0xff362e32),
      surfaceContainerHigh: Color(0xff41393e),
      surfaceContainerHighest: Color(0xff4d4449),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.background,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
