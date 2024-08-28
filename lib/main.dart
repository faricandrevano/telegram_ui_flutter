import 'package:flutter/material.dart';
import 'package:tugas5_telegram/ui/pages/group_chat_page.dart';

import 'package:tugas5_telegram/ui/pages/navigation.dart';
import 'package:tugas5_telegram/ui/pages/private_chat_page.dart';
import 'package:tugas5_telegram/ui/pages/private_pinned_chat_page.dart';
import 'package:tugas5_telegram/ui/pages/settings_page.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const NavigationPage(),
        '/chats': (context) => const PrivateChatPage(),
        '/settings': (context) => const SettingsPage(),
        '/grup': (context) => const GroupChatPage(),
        '/chat-pinned': (context) => const PrivatePinnedChatPage(),
      },
    );
  }
}
