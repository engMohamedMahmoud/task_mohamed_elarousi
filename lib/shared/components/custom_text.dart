import 'package:flutter/material.dart';
import 'package:task_mohamed_elarousi/shared/helpers/text_styles.dart';

class CustomText extends Text {
  const CustomText(
    this.text, {
    this.fontFamily,
    this.onTap,
    this.textStyle,
    this.maxLines,
    this.textOverflow,
    this.textDirection,
    this.textColor,
    this.fontWeight,
    this.padding,
    this.fontSize,
    this.textHeight,
    this.textDecoration,
    this.textAlign,
    super.key,
  }) : super(text);

  final String text;
  final String? fontFamily;
  final void Function()? onTap;
  final TextStyle? textStyle;
  final int? maxLines;
  final TextOverflow? textOverflow;
  final TextDirection? textDirection;
  final Color? textColor;
  final FontWeight? fontWeight;
  final EdgeInsetsGeometry? padding;
  final double? fontSize, textHeight;
  final TextDecoration? textDecoration;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: InkWell(
        onTap: onTap,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Text(
          text,
          style: textStyle ??
              TextStyles().body().copyWith(
                    color: textColor,
                    fontFamily: fontFamily,
                    fontWeight: fontWeight,
                    fontSize: fontSize,
                    decoration: textDecoration,
                    height: textHeight,
                    overflow: textOverflow,
                  ),
          textAlign: textAlign,
          //TODO(Hesham): Will use Localization Util
          textDirection:
              textDirection /*?? isArabic?TextDirection.rtl:TextDirection.ltr*/,
          overflow: textOverflow,
          maxLines: maxLines,
        ),
      ),
    );
  }
}
