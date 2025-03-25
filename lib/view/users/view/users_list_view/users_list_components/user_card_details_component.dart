import 'package:flutter/material.dart';

import '../../../../../shared/components/head_line_title_widget.dart';
import '../../../../../shared/components/image_user_border.dart';
import '../../../../../shared/components/sub_title_widget.dart';
import '../../../../../shared/helpers/palette.dart';
import '../../../../../shared/helpers/sizes.dart';
import '../../../model/user_model.dart';
import '../../../view_controller/users_view_controller.dart';

class UserCardDetails extends StatelessWidget {
  final User user;
  final UsersViewController usersVC;
  const UserCardDetails({super.key, required this.user, required this.usersVC});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorPalette().surface.secondary,
      child: ListTile(
        contentPadding: EdgeInsets.zero,
       onTap: () => usersVC.selectUserDetails(user),
        leading: Padding(
          padding:EdgeInsets.only(left:Sizes().surface.small),
          child: ImageUserBorder(
              imageLink: user.avatar,
              width: Sizes().surface.twoXLarge,
              height: Sizes().surface.twoXLarge,
              borderColor: ColorPalette().surface.quaternary),
        ),
        title: HeadLineTitleWidget(name: '${user.firstName} ${user.lastName}'),
        subtitle:SubTitleWidget(name: user.email),
      ),
    );
  }
}
