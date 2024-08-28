import 'package:flutter/material.dart';
import 'package:tugas5_telegram/shared/theme.dart';

class ListChatAppBar extends StatefulWidget {
  const ListChatAppBar({super.key});

  @override
  State<ListChatAppBar> createState() => _ListChatAppBarState();
}

class _ListChatAppBarState extends State<ListChatAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: lightColor,
      surfaceTintColor: lightColor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 55,
            child: Stack(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: Image.asset('assets/img_profile_header1.png'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.asset('assets/img_profile_header2.png'),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: Image.asset('assets/img_profile_header3.png'),
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          Text(
            'Chats',
            style: blackTextStyle.copyWith(fontSize: 22, fontWeight: regular),
          )
        ],
      ),
      leading: const Drawer(
        backgroundColor: Colors.transparent,
        child: Icon(Icons.menu_rounded),
      ),
      actions: const [
        Icon(
          Icons.add_circle_outline,
          color: Colors.black,
        ),
        SizedBox(width: 16.96),
        Icon(
          Icons.search,
          color: Colors.black,
        ),
        SizedBox(width: 16.96),
      ],
    );
  }
}
