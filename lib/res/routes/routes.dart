import 'package:get/get.dart';
import 'package:task_mohamed_elarousi/res/routes/routes_name.dart';
import 'package:task_mohamed_elarousi/view/splash/screen_view/splash_view.dart';
import '../../view/users/view/user_details_view/user_details_view.dart';
import '../../view/users/view/users_list_view/users_list_view.dart';
class AppRoutes {

  static appRoutes() => [
    GetPage(
      name: RouteName.splashScreen,
      page: () => SplashScreen() ,
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ) ,
    GetPage(
      name: RouteName.usersListView,
      page: () => const UsersListView () ,
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ) ,
    GetPage(
      name: RouteName.userDetailsView,
      page: () =>  UserDetailsView () ,
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ) ,

  ];

}