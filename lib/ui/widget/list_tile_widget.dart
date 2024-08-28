import 'package:flutter/material.dart';
import 'package:tugas5_telegram/shared/theme.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile(
      {super.key,
      required this.nama,
      required this.img,
      required this.waktu,
      required this.message,
      this.pinned,
      this.sticker,
      this.read,
      required this.grup,
      this.message2});
  final String nama, img, waktu, message;
  final bool? pinned, sticker, read;
  final String? message2;
  final bool grup;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (grup == true) {
          Navigator.pushNamed(context, '/grup');
        } else if (pinned == true) {
          Navigator.pushNamed(context, '/chat-pinned');
        } else {
          Navigator.pushNamed(context, '/chats');
        }
      },
      child: ListTile(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
        tileColor:
            pinned == true ? const Color(0xffE2F5FD) : Colors.transparent,
        subtitle: sticker == true
            ? Text(
                '$message Sticker',
                style: blueTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: regular,
                ),
              )
            : grup == true
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        message,
                        style: greyTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: regular,
                        ),
                      ),
                      Text(
                        message2.toString(),
                        style: greyTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: regular,
                        ),
                      )
                    ],
                  )
                : Text(
                    message,
                    style: greyTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: regular,
                    ),
                  ),
        title: read == true
            ? Row(
                children: [
                  Text(
                    nama,
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: regular,
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Icon(Icons.volume_off, size: 16),
                ],
              )
            : Text(
                nama,
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: regular,
                ),
              ),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              waktu,
              style: greyTextStyle.copyWith(
                fontWeight: regular,
                fontSize: 12,
              ),
            ),
            const SizedBox(height: 8),
            pinned == true
                ? Image.asset('assets/icon_pin.png')
                : read == true
                    ? const Icon(
                        Icons.done_all,
                        color: Color(0xff4ECC5E),
                      )
                    : Container(
                        width: 20,
                        height: 20,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: blueColor,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Text(
                          '2',
                          style: whiteTextStyle.copyWith(
                            fontWeight: medium,
                            fontSize: 12,
                          ),
                        ),
                      )
          ],
        ),
        leading: Image.asset(img),
      ),
    );
  }
}
