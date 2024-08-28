import 'package:flutter/material.dart';
import 'package:tugas5_telegram/shared/theme.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: const EdgeInsets.only(
            right: 20,
            left: 20,
            bottom: 23,
          ),
          color: const Color(0xff5A8EBD),
          child: Row(
            children: [
              CircleAvatar(
                maxRadius: 40,
                child: Image.asset('assets/img_avatar_1.png'),
              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Boris',
                    style: whiteTextStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'online',
                    style: whiteTextStyle.copyWith(
                      fontWeight: regular,
                      fontSize: 14,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Container(
          color: const Color(0xffFFFFFF),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(
                  right: 20,
                  top: 19,
                  left: 20,
                ),
                decoration: BoxDecoration(
                  color: lightColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 0,
                      blurRadius: 1,
                    ),
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      spreadRadius: 0,
                      blurRadius: 1,
                    ),
                    BoxShadow(
                      color: Colors.black.withOpacity(0.04),
                      spreadRadius: 0,
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Account',
                      style: TextStyle(
                        color: Color(0xff4094D0),
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 9),
                    ...ListTile.divideTiles(
                      color: const Color(0xffE9EBEA),
                      context: context,
                      tiles: [
                        customListSettings(
                          leading: false,
                          subtitle: true,
                          textTitle: '+1 (234) 567 89 01',
                          textSubtitle: 'Tap to change phone number',
                        ),
                        customListSettings(
                          leading: false,
                          subtitle: true,
                          textTitle: '@voidvoidvoidvoidvoid',
                          textSubtitle: 'Username',
                        ),
                        customListSettings(
                          leading: false,
                          subtitle: true,
                          textTitle: '@voidrainbow',
                          textSubtitle: 'Bio',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Container(
                padding: const EdgeInsets.only(
                  right: 20,
                  top: 19,
                  left: 20,
                ),
                decoration: BoxDecoration(
                  color: lightColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 0,
                      blurRadius: 1,
                    ),
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      spreadRadius: 0,
                      blurRadius: 1,
                    ),
                    BoxShadow(
                      color: Colors.black.withOpacity(0.04),
                      spreadRadius: 0,
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Settings',
                      style: TextStyle(
                        color: Color(0xff4094D0),
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 9),
                    ...ListTile.divideTiles(
                      color: const Color(0xffE9EBEA),
                      context: context,
                      tiles: [
                        customListSettings(
                          leading: true,
                          subtitle: false,
                          textTitle: 'Notifications and Sounds',
                          imgLeading: const Icon(
                            Icons.notifications_outlined,
                            color: Color(0xff868686),
                          ),
                        ),
                        customListSettings(
                          leading: true,
                          subtitle: false,
                          textTitle: 'Privacy and Security',
                          imgLeading: const Icon(
                            Icons.lock_outlined,
                            color: Color(0xff868686),
                          ),
                        ),
                        customListSettings(
                          leading: true,
                          subtitle: false,
                          textTitle: 'Data and Storage',
                          imgLeading: const Icon(
                            Icons.pie_chart_outline_outlined,
                            color: Color(0xff868686),
                          ),
                        ),
                        customListSettings(
                          leading: true,
                          subtitle: false,
                          textTitle: 'Chat Settings',
                          imgLeading: const Icon(
                            Icons.chat_bubble_outline_rounded,
                            color: Color(0xff868686),
                          ),
                        ),
                        customListSettings(
                          leading: true,
                          subtitle: false,
                          textTitle: 'Folders',
                          imgLeading: const Icon(
                            Icons.folder_outlined,
                            color: Color(0xff868686),
                          ),
                        ),
                        customListSettings(
                          leading: true,
                          subtitle: false,
                          textTitle: 'Devices',
                          imgLeading: const Icon(
                            Icons.devices_outlined,
                            color: Color(0xff868686),
                          ),
                        ),
                        customListSettings(
                          leading: true,
                          subtitle: false,
                          textTitle: 'Language',
                          imgLeading: const Icon(
                            Icons.language_outlined,
                            color: Color(0xff868686),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Container(
                padding: const EdgeInsets.only(
                  right: 20,
                  top: 19,
                  left: 20,
                ),
                decoration: BoxDecoration(
                  color: lightColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 0,
                      blurRadius: 1,
                    ),
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      spreadRadius: 0,
                      blurRadius: 1,
                    ),
                    BoxShadow(
                      color: Colors.black.withOpacity(0.04),
                      spreadRadius: 0,
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Help',
                      style: TextStyle(
                        color: Color(0xff4094D0),
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 9),
                    ...ListTile.divideTiles(
                      color: const Color(0xffE9EBEA),
                      context: context,
                      tiles: [
                        customListSettings(
                          leading: true,
                          subtitle: false,
                          textTitle: 'Ask a Question',
                          imgLeading: const Icon(
                            Icons.question_answer_outlined,
                            color: Color(0xff868686),
                          ),
                        ),
                        customListSettings(
                          leading: true,
                          subtitle: false,
                          textTitle: 'Telegram FAQ',
                          imgLeading: const Icon(
                            Icons.question_mark_outlined,
                            color: Color(0xff868686),
                          ),
                        ),
                        customListSettings(
                          leading: true,
                          subtitle: false,
                          textTitle: 'Privacy Policy',
                          imgLeading: const Icon(
                            Icons.shield_outlined,
                            color: Color(0xff868686),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget customListSettings(
      {required bool leading,
      required bool subtitle,
      String? textTitle,
      String? textSubtitle,
      Icon? imgLeading}) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 0),
      leading: leading ? imgLeading : null,
      title: Text(
        textTitle.toString(),
        style: TextStyle(
          fontSize: 15,
          fontWeight: regular,
        ),
      ),
      subtitle: subtitle
          ? Text(
              textSubtitle.toString(),
              style: TextStyle(
                color: const Color(0xff83868B),
                fontSize: 12,
                fontWeight: regular,
              ),
            )
          : null,
    );
  }
}
