import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

extension ContextExtension on BuildContext {
  double get height =>
      MediaQuery
          .of(this)
          .size
          .height;

  double get width =>
      MediaQuery
          .of(this)
          .size
          .width;

  bool get isArabicLocale => Get.locale?.languageCode == 'ar';

}