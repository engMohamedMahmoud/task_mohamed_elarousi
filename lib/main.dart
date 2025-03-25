import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task_mohamed_elarousi/res/routes/routes.dart';
import 'package:task_mohamed_elarousi/shared/helpers/palette.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    // Set the status bar color
    SystemChrome.setSystemUIOverlayStyle(
       SystemUiOverlayStyle(
        statusBarColor: ColorPalette().surface.primary, // Status bar background color
        statusBarIconBrightness: Brightness.light, // Icons' color
      ),
    );

    return ScreenUtilInit(
        designSize: const Size(360, 780),
      enableScaleText: () => false,
      fontSizeResolver: (defaultSize, screenUtils) => defaultSize.toDouble(),
      builder: (_, child) {
        return GetMaterialApp(
          title: 'Task',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: 'Cairo',
            primarySwatch: Colors.blue,
            appBarTheme: AppBarTheme(
              iconTheme: IconThemeData(color: ColorPalette().typography.primary),
            ),
          ),
          getPages: AppRoutes.appRoutes(),
        );
      }
    );
  }
}

