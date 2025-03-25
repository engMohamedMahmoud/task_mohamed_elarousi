import 'package:flutter/material.dart';

import '../../../../../shared/components/custom_text.dart';
import '../../../../../shared/helpers/palette.dart';
import '../../../../../shared/helpers/text_styles.dart';

AppBar appBar(bool automaticallyImplyLeading){
  return AppBar(
    automaticallyImplyLeading: automaticallyImplyLeading,
    centerTitle: true,
    title: CustomText('Users List',
      textStyle: TextStyles().headline(fontWeight: FontWeight.w600, color: ColorPalette().typography.primary),
      textAlign: TextAlign.center,),
    backgroundColor: ColorPalette().surface.quaternary,
  );
}