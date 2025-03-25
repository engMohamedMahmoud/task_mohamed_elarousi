import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:task_mohamed_elarousi/shared/helpers/palette.dart';

class CustomLoading extends StatelessWidget {
  const CustomLoading({super.key, this.indicatorType, this.backgroundColor, this.colors, this.strokeWidth});

  final Indicator? indicatorType;
  final Color? backgroundColor;
  final List<Color>? colors;
  final double? strokeWidth;

  @override
  Widget build(BuildContext context) {
    return LoadingIndicator(
        indicatorType: indicatorType ?? Indicator.ballPulseSync,
        colors: colors??[ColorPalette().brand.violet],
        strokeWidth: strokeWidth,
        backgroundColor: backgroundColor,
    );
  }
}
