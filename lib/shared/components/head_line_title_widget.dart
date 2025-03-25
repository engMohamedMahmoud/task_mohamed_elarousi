import 'package:flutter/material.dart';

import '../helpers/styles.dart';
import 'custom_text.dart';

class HeadLineTitleWidget extends StatelessWidget {
  final String name;
  const HeadLineTitleWidget({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return CustomText( name, textStyle: Styles.headlineTextStyle, textOverflow: TextOverflow.ellipsis, maxLines: 1,);
  }
}