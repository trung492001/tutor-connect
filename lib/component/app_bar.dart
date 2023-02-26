import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({required this.title, super.key});

  // Fields in a Widget subclass are always marked "final".

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      height: 56.0, // in logical pixels
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: const BoxDecoration(color: Colors.white),
      // Row is a horizontal, linear layout.
      child: Row(
        children: [
          // Expanded expands its child
          // to fill the available space.
          Expanded(child: title),
          CircleAvatar(
            backgroundColor: Colors.purple.shade700,
            child: const Text('D'),
          ),
        ],
      ),
    ));
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(56);
}
