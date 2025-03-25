import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_mohamed_elarousi/shared/helpers/palette.dart';

class AppDecoration{
  /// Fill decoration
  static BoxDecoration get fillBlueGray => BoxDecoration(
      color: ColorPalette().surface.secondary
  );
  /// Fill decoration
  static BoxDecoration get bottomLineTabBorder => BoxDecoration(
      border: Border(
          bottom: BorderSide(color: ColorPalette().brand.violet,width: 3.h)
      )
  );
  /// Fill decoration
  static BoxDecoration get surfaceSecondaryBoxDecoration => BoxDecoration(
    color: ColorPalette().surface.secondary,
  );
  /// Fill decoration
  static BoxDecoration get rectangleBorder => BoxDecoration(
      shape: BoxShape.rectangle,
      color: ColorPalette().brand.violet,
      borderRadius: BorderRadius.circular(10)

  );

  static BoxDecoration get normalBgDecoration => BoxDecoration(
      shape: BoxShape.rectangle,
      color: ColorPalette().surface.secondary,
      borderRadius: BorderRadius.circular(10)

  );

}