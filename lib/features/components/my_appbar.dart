import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget with PreferredSizeWidget {
  MyAppBar({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  State<MyAppBar> createState() => _MyAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Image.asset(
        'assets/icons/Icon_Wish.png',
        color: Colors.amber,
      ),
      title: Text(
        widget.title ?? '',
      ),
    );
  }
}
