class Sizes {
  final _Gaps surface = const _Gaps();
  final _Typography typography = const _Typography();
  final _Radius radius = const _Radius();
  final _Space space = const _Space();

  factory Sizes() => _instance;

  Sizes._internal();

  /// Singleton Factory
  static final Sizes _instance = Sizes._internal();

}


class _Gaps {
  /// [twoXSmall] is 4
  final double twoXSmall = 4;
  /// [xSmall] is 8
  final double xSmall = 8;
  /// [small] is 12
  final double small = 12;
  /// [medium] is 16
  final double medium = 16;
  /// [xMedium] is 20
  final double xMedium = 20;
  /// [large] is 24
  final double large = 24;
  /// [xLarge] is 32
  final double xLarge = 32;
  /// [twoXLarge] is 40
  final double twoXLarge = 40;
  /// [threeXLarge] is 48
  final double threeXLarge = 48;
  /// [fourXLarge] is 56
  final double fourXLarge = 56;
  /// [fiveXLarge] is 64
  final double fiveXLarge = 64;
  /// [sixXLarge] is 96
  final double sixXLarge = 96;

  const _Gaps();
}

class _Typography {
  /// [largeTextSize] is 34
  final double largeTextSize = 34;
  /// [title1] is 28
  final double title1 = 28;
  /// [title2] is 22
  final double title2 = 22;
  /// [title3] is 20
  final double title3 = 20;
  /// [headline] is 17
  final double headline = 17;
  /// [bodyText] is 17
  final double bodyText = 17;
  /// [subheading] is 15
  final double subheading = 15;
  /// [footnote] is 13
  final double footnote = 13;
  /// [caption1] is 12
  final double caption1 = 12;
  /// [caption2] is 11
  final double caption2 = 11;

  const _Typography();
}

class _Radius {
  /// [radius100] is 4
  final double radius100 = 4;
  /// [radius200] is 8
  final double radius200 = 8;
  /// [radius300] is 12
  final double radius300 = 12;
  /// [radius300] is 16
  final double radius400 = 16;
  /// [radius300] is 22
  final double radius500 = 20;
  /// [radius300] is 22
  final double radius600 = 22;
  // [radius700] is 28
  final double radius700 = 28;



  const _Radius();
}

class _Space {
  /// [space100] is 4
  final double space100 = 4;
  /// [space200] is 8
  final double space200 = 8;
  /// [space300] is 12
  final double space300 = 12;
  /// [space400] is 16
  final double space400 = 16;
  /// [space500] is 20
  final double space500 = 20;
  /// [space600] is 24
  final double space600 = 24;
  /// [space600] is 28
  final double space700 = 28;
  /// [space600] is 32
  final double space800 = 32;
  /// [space600] is 36
  final double space900 = 36;
  /// [space600] is 40
  final double space1000 = 40;
  /// [space600] is 44
  final double space1100 = 44;
  /// [space600] is 48
  final double space1200 = 48;


  const _Space();
}
