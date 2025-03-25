import 'package:flutter/material.dart';
import '../../../model/user_model.dart';
import '../../../view_controller/users_view_controller.dart';
import 'user_card_details_component.dart';

class ListViewUsersComponents extends StatelessWidget {
  final List<User> usersList;
  final UsersViewController usersVC;
  const ListViewUsersComponents({super.key, required this.usersList, required this.usersVC});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: usersList.length,
      padding: EdgeInsets.all(10),
      itemBuilder: (context, index) => UserCardDetails(user: usersList[index], usersVC: usersVC,),);
  }
}
