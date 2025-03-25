import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:task_mohamed_elarousi/shared/helpers/palette.dart';
import 'package:task_mohamed_elarousi/shared/helpers/sizes.dart';

class CustomShimmer extends StatelessWidget {
  const CustomShimmer({super.key, this.height, this.width, this.borderRadius, this.shape});
  final double? height, width, borderRadius;
  final BoxShape? shape;
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: ColorPalette().typography.tertiary.withAlpha(500),
        highlightColor: ColorPalette().typography.tertiary.withAlpha(100),
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
              color: Colors.white,
            shape: shape??BoxShape.rectangle,
              borderRadius: shape==BoxShape.circle?null:BorderRadius.circular(borderRadius??5)),
        ));
  }
}

class CustomShimmerList extends StatelessWidget {
  const CustomShimmerList(this.listLength, {
    this.height,
    this.padding,
    super.key});

  final int listLength;
  final double? height;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding?? const EdgeInsets.all(32.0),
      child: ListView(
        shrinkWrap: true,
        children: List.generate(
          listLength,
              (index) => Padding(
            padding: EdgeInsets.only(bottom: Sizes().space.space400),
            child: CustomShimmer(
              width: double.infinity,
              height: height??56,
              borderRadius: Sizes().radius.radius200,
            ),
          ),
        ),
      ),
    );
  }
}