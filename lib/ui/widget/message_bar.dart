import 'package:flutter/material.dart';
import 'package:tugas5_telegram/shared/theme.dart';

class CustomMessageBar extends StatelessWidget {
  const CustomMessageBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        alignment: Alignment.center,
        color: lightColor,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        height: 76,
        child: SizedBox(
          width: double.infinity,
          height: 44,
          child: TextField(
            autofocus: true,
            maxLines: null,
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 10,
              ),
              suffixIcon: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/icon_stiker.png',
                    width: 18.67,
                  ),
                  const SizedBox(width: 16),
                  const Icon(Icons.keyboard_voice_outlined),
                  const SizedBox(width: 20.44),
                ],
              ),
              icon: const Icon(Icons.attach_file_outlined),
              hintText: 'Message',
              hintStyle: const TextStyle(
                color: Color(0xff758D94),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(32),
                borderSide: const BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
              fillColor: const Color(0xffE2F5FD),
              filled: true,
            ),
          ),
        ),
      ),
    );
  }
}
