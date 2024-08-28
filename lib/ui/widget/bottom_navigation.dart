import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatefulWidget {
  const CustomBottomNavigation({super.key, this.onTap, required this.index});
  final void Function(int)? onTap;
  final int index;

  @override
  State<CustomBottomNavigation> createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: BottomNavigationBar(
        unselectedItemColor: const Color(0xff030C14),
        type: BottomNavigationBarType.fixed,
        currentIndex: widget.index.toInt(),
        selectedFontSize: 12,
        unselectedLabelStyle: const TextStyle(
          fontSize: 12,
        ),
        onTap: widget.onTap,
        backgroundColor: const Color(0xffF1FBFF),
        items: [
          itemNavigation(
            iconImage: 'assets/icon_groups.png',
            labelText: 'Contacts',
            badge: false,
          ),
          itemNavigation(
            iconImage: 'assets/icon_telp.png',
            labelText: 'Call',
            itemBadge: '11',
            badge: true,
          ),
          itemNavigation(
            iconImage: 'assets/icon_chat.png',
            itemBadge: '6',
            labelText: 'Chats',
            badge: true,
          ),
          itemNavigation(
            iconImage: 'assets/icon_settings.png',
            labelText: 'Settings',
            badge: false,
          ),
        ],
      ),
    );
  }

  itemNavigation({
    String? itemBadge,
    required iconImage,
    required labelText,
    required bool badge,
  }) {
    return BottomNavigationBarItem(
      activeIcon: Container(
        width: 64,
        height: 32,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: const Color(0xffe2f5fd),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Badge(
          backgroundColor: const Color(0xfff2b8b5),
          label: Text(itemBadge.toString()),
          textColor: const Color(0xff601410),
          isLabelVisible: badge,
          child: Image.asset(
            iconImage,
            color: const Color(0xff2AABEE),
          ),
        ),
      ),
      icon: Container(
        width: 64,
        height: 32,
        alignment: Alignment.center,
        child: Badge(
          isLabelVisible: badge,
          backgroundColor: const Color(0xfff2b8b5),
          label: Text(itemBadge.toString()),
          textColor: const Color(0xff601410),
          child: Image.asset(
            iconImage,
            color: const Color(0xff030C14),
          ),
        ),
      ),
      label: labelText.toString(),
    );
  }
}
