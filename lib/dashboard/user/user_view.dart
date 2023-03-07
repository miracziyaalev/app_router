import 'package:auto_route/auto_route.dart';
import 'package:autoroute/product/navigator/app_router.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import 'model/user_model.dart';

class UserView extends StatefulWidget {
  const UserView({super.key});

  @override
  State<UserView> createState() => _UserViewState();
}

class _UserViewState extends State<UserView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(''.customProfileImage),
        ),
      ),
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (BuildContext context, int index) {
          return TextButton(
            onPressed: () {
              context.router.navigate(
                  UserDetailRoute(model: UserModel(avatarUrl: ''.customProfileImage, imageUrl: ''.randomImage)));
            },
            child: Card(
              child: index.isEven ? Image.network(''.randomSquareImage) : Image.network(''.randomImage),
            ),
          );
        },
      ),
    );
  }
}
