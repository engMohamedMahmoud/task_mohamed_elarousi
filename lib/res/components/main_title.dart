import 'package:flutter/material.dart';
import 'package:task_mohamed_elarousi/shared/helpers/palette.dart';

class MainTitleWidget extends StatelessWidget {
  final String title;
  final double fontSize;
  final bool? isBold;
  final bool? isChangeColor;

  const MainTitleWidget({super.key, required this.title, required this.fontSize, this.isBold, this.isChangeColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      style:  TextStyle(
          color: isChangeColor == true?  Colors.white:ColorPalette().typography.secondary,
          fontWeight: isBold == true? FontWeight.w900: FontWeight.w600,
          fontSize: fontSize,
          fontStyle: FontStyle.normal,
          fontFamily: 'Cairo'),
    );
  }
}