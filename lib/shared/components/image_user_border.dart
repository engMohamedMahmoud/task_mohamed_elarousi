import 'dart:math';
import 'package:flutter/material.dart';
import 'custom_network_image.dart';

class ImageUserBorder extends StatelessWidget {
  final String imageLink;
  final double width;
  final double height;
  final Color borderColor;
  final bool isCircular;
  final BoxFit? fit;
  const ImageUserBorder({super.key, required this.imageLink, required this.width, required this.height, required this.borderColor, this.isCircular = true, this.fit});

  @override
  Widget build(BuildContext context) {
    return
      Container(
        height: height,
        width: width,
        decoration: BoxDecoration(shape: BoxShape.circle, color: borderColor),
        padding: const EdgeInsets.all(2),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(isCircular?max(height, width)/2:0),
          child:
          CustomNetworkImage(imageLink.isNotEmpty? imageLink: 'https://static.vecteezy.com/system/resources/thumbnails/005/545/335/small/user-sign-icon-person-symbol-human-avatar-isolated-on-white-backogrund-vector.jpg' ,
            fit: fit??BoxFit.cover,
            height: height,
            width: width,),
        ),
      );
  }
}