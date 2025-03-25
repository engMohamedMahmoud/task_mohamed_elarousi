import 'dart:ui';

class ColorPalette {
  final _Surface surface = const _Surface();
  final _Brand brand = const _Brand();
  final _Stoke stoke = const _Stoke();
  final _Typography typography = const _Typography();
  final _Functional functional = const _Functional();

  factory ColorPalette() => _instance;

  ColorPalette._internal();

  /// Singleton Factory
  static final ColorPalette _instance = ColorPalette._internal();

}


class _Surface {
  final Color primary = const Color(0xFF1D2329);
  final Color secondary = const Color(0xFF2C343A);
  final Color tertiary = const Color(0xFF38424A);
  final Color quaternary = const Color(0xFF4A5862);

  const _Surface();
}

class _Brand {
  final Color violet = const Color(0xFF8A7DFF);

  const _Brand();
}

class _Stoke {
  final Color primary = const Color(0xFF4A5862);

  const _Stoke();
}

class _Typography {
  final Color primary = const Color(0xFFFFFFFF);
  final Color secondary = const Color(0xFFC0C2C4);
  final Color tertiary = const Color(0xFF999999);
  final Color gold = const Color(0xFFFDD835);

  const _Typography();
}

class _Functional {
  final Color danger = const Color(0xFFE54747);
  final Color success = const Color(0xFF04B483);

  const _Functional();
}