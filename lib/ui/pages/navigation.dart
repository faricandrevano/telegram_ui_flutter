import 'package:flutter/material.dart';
import 'package:tugas5_telegram/shared/theme.dart';
import 'package:tugas5_telegram/ui/app_bar/list_chat_app_bar.dart';
import 'package:tugas5_telegram/ui/app_bar/setting_app_bar.dart';
import 'package:tugas5_telegram/ui/pages/call_page.dart';
import 'package:tugas5_telegram/ui/pages/contact_page.dart';
import 'package:tugas5_telegram/ui/pages/list_chat_page.dart';
import 'package:tugas5_telegram/ui/pages/settings_page.dart';
import 'package:tugas5_telegram/ui/widget/bottom_navigation.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int currentIndex = 2;
  final List<Widget> page = const [
    ContactPage(),
    CallPage(),
    ListChatPage(),
    SettingsPage()
  ];
  final List<Widget> appbar = const [
    SettingAppBar(),
    SettingAppBar(),
    ListChatAppBar(),
    SettingAppBar(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: appbar[currentIndex],
      ),
      body: page[currentIndex],
      bottomNavigationBar: CustomBottomNavigation(
        index: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
      floatingActionButton: currentIndex == 2
          ? FloatingActionButton(
              elevation: 3,
              onPressed: () {},
              backgroundColor: const Color(0xffB5E6FA),
              heroTag: 'a0012',
              child: const Icon(
                Icons.add,
                color: Color(0xff165995),
              ),
            )
          : null,
    );
  }
}
