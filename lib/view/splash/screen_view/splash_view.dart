import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_mohamed_elarousi/view/splash/view_controller/splash_view_controller.dart';
import '../../../shared/helpers/palette.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  final splashVM = Get.put(SplashViewController());

  late Animation<double> animation;
  late AnimationController controller;

  listener() {setState(() {});}

  @override
  void initState() {
    super.initState();
    controller = AnimationController(duration: const Duration(seconds: 2), vsync: this);
    animation = Tween<double>(begin: 0.8, end: 1)
        .animate(CurvedAnimation(parent: controller, curve: Curves.easeInOut))
      ..addListener(listener);
    controller.repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette().surface.secondary,
      body: Center(
        child: Image.asset(
          'assets/png/logo.png',
          width: 100 * animation.value,
          height: 100 * animation.value,
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  @override
  void dispose() {
    animation.removeListener(listener);
    controller.dispose();
    super.dispose();
  }
}
