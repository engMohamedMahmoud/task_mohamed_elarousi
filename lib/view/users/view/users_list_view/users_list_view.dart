import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_mohamed_elarousi/shared/components/custom_position_animation.dart';
import 'package:task_mohamed_elarousi/view/users/view/users_list_view/users_list_components/app_bar.dart';
import 'package:task_mohamed_elarousi/view/users/view/users_list_view/users_list_components/list_view_users_components.dart';
import '../../../../shared/components/custom_shimmer.dart';
import '../../../../shared/components/loader_widgets.dart';
import '../../../../shared/helpers/palette.dart';
import '../../view_controller/users_view_controller.dart';

class UsersListView extends StatelessWidget {
  const UsersListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette().surface.primary,
      appBar: appBar(false),
      body: Obx(() {
        final UsersViewController usersVC = Get.put(UsersViewController());
        if (usersVC.isLoading.value && usersVC.usersList.isEmpty) {
          return const CustomShimmerList(7);
        }
        if (usersVC.usersList.isEmpty) return emptyDataWidget;

        return NotificationListener<ScrollNotification>(

          onNotification: (ScrollNotification scrollInfo) {
            if (!usersVC.isLoading.value && scrollInfo.metrics.pixels == scrollInfo.metrics.maxScrollExtent) {
              if(usersVC.hasMore.value == true){
                usersVC.getUsersListApi();
              }
            }
            return false;
          },
          child: CustomPositionAnimation(child: ListViewUsersComponents(usersList: usersVC.usersList, usersVC: usersVC,)),
        );
      },),
    );
  }
}
