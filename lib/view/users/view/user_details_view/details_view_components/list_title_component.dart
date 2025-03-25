import 'package:flutter/material.dart';
import '../../../../../shared/components/custom_text.dart';
import '../../../../../shared/components/head_line_title_widget.dart';
import '../../../../../shared/helpers/palette.dart';
import '../../../../../shared/helpers/text_styles.dart';

class ListTitleComponent extends StatelessWidget {
  final String title;
  final String data;
  const ListTitleComponent({super.key, required this.title, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.3,
            child: CustomText(title,
              textStyle: TextStyles().headline(fontWeight: FontWeight.w600, color: ColorPalette().typography.primary),
              textAlign: TextAlign.start, ),
          ),
          HeadLineTitleWidget(name: data)
        ],


      ),
    );
  }
}
