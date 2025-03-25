import 'package:flutter/material.dart';
import 'package:flutter/src/painting/text_style.dart';
import 'package:task_mohamed_elarousi/shared/helpers/palette.dart' show ColorPalette;
import 'package:task_mohamed_elarousi/shared/helpers/text_styles.dart';

class Styles {
  /// HeadLine TextStyle
  static TextStyle get headlineTextStyle =>
      TextStyles().headline(color: ColorPalette().typography.primary);

  /// footnote TextStyle
  static TextStyle get footnoteTextStyle =>
      TextStyles().footnote(color: ColorPalette().typography.secondary);

  /// headLine Typography Secondary TextStyle
  static TextStyle get headLineTypographySecondaryTextStyle =>
      TextStyles().headline(
          fontWeight: FontWeight.w600,
          color: ColorPalette().typography.secondary);

  /// subhead Typography Secondary TextStyle
  static TextStyle get subheadTypographySecondaryTextStyle =>
      TextStyles().subhead(
          fontWeight: FontWeight.w600,
          color: ColorPalette().typography.primary);

  /// caption1 TextStyle
  static TextStyle get caption1TextStyle =>
      TextStyles().caption1(
          color: ColorPalette().typography.primary);

  /// body TextStyle
  static TextStyle get bodyTextStyle =>
      TextStyles().body(
          color: ColorPalette().typography.primary);
}
