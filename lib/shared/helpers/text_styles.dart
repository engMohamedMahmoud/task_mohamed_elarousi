
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_mohamed_elarousi/shared/helpers/palette.dart';
import 'package:task_mohamed_elarousi/shared/helpers/sizes.dart';

class TextStyles {


  final String _fontFamily = 'Cairo';


  TextStyle largeTitle({Color? color, FontWeight? fontWeight}) =>
      TextStyle(fontSize: Sizes().typography.largeTextSize.sp, fontWeight: fontWeight??FontWeight.normal, color: color??ColorPalette().typography.primary, fontFamily: _fontFamily);

  TextStyle title1({Color? color, FontWeight? fontWeight}) =>
      TextStyle(fontSize: Sizes().typography.title1.sp, fontWeight: fontWeight??FontWeight.normal, color: color??ColorPalette().typography.primary, fontFamily: _fontFamily);

  TextStyle title2({Color? color, FontWeight? fontWeight}) =>
      TextStyle(fontSize: Sizes().typography.title2.sp, fontWeight: fontWeight??FontWeight.normal, color: color??ColorPalette().typography.primary, fontFamily: _fontFamily);

  TextStyle title3({Color? color, FontWeight? fontWeight}) =>
      TextStyle(fontSize: Sizes().typography.title3.sp, fontWeight: fontWeight??FontWeight.normal, color: color??ColorPalette().typography.primary, fontFamily: _fontFamily);

  TextStyle headline({Color? color, FontWeight? fontWeight}) =>
      TextStyle(fontSize: Sizes().typography.headline.sp, fontWeight: fontWeight??FontWeight.normal, color: color??ColorPalette().typography.primary, fontFamily: _fontFamily);

  TextStyle body({Color? color, FontWeight? fontWeight}) =>
      TextStyle(fontSize: Sizes().typography.bodyText.sp, fontWeight: fontWeight??FontWeight.normal, color: color??ColorPalette().typography.primary, fontFamily: _fontFamily);

  TextStyle subhead({Color? color, FontWeight? fontWeight}) =>
      TextStyle(fontSize: Sizes().typography.subheading.sp, fontWeight: fontWeight??FontWeight.normal, color: color??ColorPalette().typography.primary, fontFamily: _fontFamily);

  TextStyle footnote({Color? color, FontWeight? fontWeight}) =>
      TextStyle(fontSize: Sizes().typography.footnote.sp, fontWeight: fontWeight??FontWeight.normal, color: color??ColorPalette().typography.primary, fontFamily: _fontFamily);

  TextStyle caption1({Color? color, FontWeight? fontWeight}) =>
      TextStyle(fontSize: Sizes().typography.caption1.sp, fontWeight: fontWeight??FontWeight.normal, color: color??ColorPalette().typography.primary, fontFamily: _fontFamily);

  TextStyle caption2({Color? color, FontWeight? fontWeight}) =>
      TextStyle(fontSize: Sizes().typography.caption2.sp, fontWeight: fontWeight??FontWeight.normal, color: color??ColorPalette().typography.primary, fontFamily: _fontFamily);

  /// The default values for every text style in the [TextStyles] class is
  ///  * fontWeight: FontWeight.normal,
  ///  * color: ColorPalette().typography.primary (White),
  ///  * fontFamily: 'Cairo
  factory TextStyles() => _instance;

  TextStyles._internal();

  /// Singleton Factory
  static final TextStyles _instance = TextStyles._internal();
}
