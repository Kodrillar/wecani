import 'package:flutter/material.dart';

class AuthAppBar extends StatelessWidget with PreferredSizeWidget {
  const AuthAppBar({super.key, required this.height, required this.title});

  final double height;
  final Widget title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      title: title,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(height);
}
