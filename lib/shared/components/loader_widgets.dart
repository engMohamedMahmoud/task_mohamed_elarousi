import 'package:flutter/material.dart';
import '../../res/components/main_title.dart';

Widget emptyDataWidget =  Center(
  child: Column(
    children: [
      const SizedBox(height:  150,),
      MainTitleWidget(fontSize: 20, title: 'There is no data to view',)
    ],
  ),
);