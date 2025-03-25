import 'package:get/get.dart';
import '../../../res/routes/routes_name.dart';

class SplashViewController extends GetxController {

  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(milliseconds: 3000), () => navigateUser());
  }
  void navigateUser() {
    Get.delete<SplashViewController>();
    final route = RouteName.usersListView;
    Get.toNamed(route);
  }
}