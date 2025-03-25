import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared/components/image_user_border.dart';
import '../../../../shared/helpers/palette.dart';
import '../../../../shared/helpers/sizes.dart';
import '../../view_controller/users_view_controller.dart';
import 'details_view_components/app_bar.dart';
import 'details_view_components/list_title_component.dart';

class UserDetailsView extends StatelessWidget {
   UserDetailsView({super.key});

  final UsersViewController usersVC = Get.find<UsersViewController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette().surface.primary,
      appBar: appBar(true, '${usersVC.selectedUser.value?.firstName} ${usersVC.selectedUser.value?.firstName}'),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: Sizes().surface.medium,),
          Center(
            child: ImageUserBorder(
                imageLink: usersVC.selectedUser.value?.avatar ?? "",
                width: Sizes().surface.sixXLarge * 2,
                height: Sizes().surface.sixXLarge * 2 ,
                borderColor: ColorPalette().surface.quaternary),
          ),
          SizedBox(height: Sizes().surface.medium,),
          ListTitleComponent(title: "Id:", data: '${usersVC.selectedUser.value?.id }',),
          ListTitleComponent(title: "Full Name:", data: '${usersVC.selectedUser.value?.firstName } ${usersVC.selectedUser.value?.lastName}',),
          ListTitleComponent(title: "Email:", data: '${usersVC.selectedUser.value?.email }',),
        ],
      ),
    );
  }
}
