import 'package:flutter/material.dart';
import '../helpers/styles.dart';
import 'custom_text.dart';

class SubTitleWidget extends StatelessWidget {
  final String name;
  const SubTitleWidget({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return CustomText( name, textStyle: Styles.footnoteTextStyle,);
  }
}