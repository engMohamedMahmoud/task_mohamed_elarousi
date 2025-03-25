import 'dart:math';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:task_mohamed_elarousi/shared/components/custom_loading.dart';

class CustomNetworkImage extends StatelessWidget {
  const CustomNetworkImage(this.imageUrl, {super.key, this.width, this.height, this.fit, this.assetErrorImagePath = "assets/png/error_image.png", this.borderRadius, this.border});

  final String imageUrl, assetErrorImagePath;
  final double? width, height;
  final BoxFit? fit;
  final double? borderRadius;
  final BoxBorder? border;

  @override
  Widget build(BuildContext context) {

    return CachedNetworkImage(
      imageUrl: imageUrl.isNotEmpty? imageUrl: "https://www.shutterstock.com/image-vector/blank-avatar-photo-place-holder-600nw-1095249842.jpg",
      width: width,
      height: height,
      fit: fit,
      imageBuilder: (context, imageProvider) => Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius?? 0.0),
          border: border,
          image: DecorationImage(
            image: imageProvider,
            fit: fit??BoxFit.cover,
          ),
        ),
      ),
      placeholder: (context, url) => Center(
        child: SizedBox(
            width: min(width??80, 80),
            height: min(height??30, 30),
            child: const CustomLoading()),
      ),
      errorWidget: (context, url, error) => Image.asset(assetErrorImagePath),
    );
  }

  CachedNetworkImageProvider provider() =>
      CachedNetworkImageProvider(imageUrl, maxWidth: width?.toInt(), maxHeight: height?.toInt());
}