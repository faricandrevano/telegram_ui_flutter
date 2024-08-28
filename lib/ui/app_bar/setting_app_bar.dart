import 'package:flutter/material.dart';

class SettingAppBar extends StatelessWidget {
  const SettingAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xff5A8EBD),
      foregroundColor: Colors.white,
      elevation: 0,
      actions: const [
        Icon(Icons.search),
        SizedBox(width: 24),
        Icon(Icons.more_vert_outlined),
      ],
    );
  }
}
