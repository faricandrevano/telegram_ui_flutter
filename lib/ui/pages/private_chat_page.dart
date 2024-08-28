import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter/material.dart';
import 'package:tugas5_telegram/shared/theme.dart';
import 'package:tugas5_telegram/ui/widget/message_bar.dart';

class PrivateChatPage extends StatelessWidget {
  const PrivateChatPage({super.key});
  @override
  Widget build(BuildContext context) {
    Duration duration = const Duration();
    Duration position = const Duration();
    bool isPlaying = false;
    bool isLoading = false;
    bool isPause = false;

    return Scaffold(
      backgroundColor: lightColor,
      appBar: AppBar(
        backgroundColor: lightColor,
        leading: GestureDetector(
          child: const Icon(Icons.arrow_back),
          onTap: () =>
              Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false),
        ),
        title: Row(
          children: [
            CircleAvatar(
              child: Image.asset('assets/img_avatar_1.png'),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(
                      color: Color(0xff758D94),
                      Icons.lock_outline,
                      size: 17,
                    ),
                    const SizedBox(width: 8.4),
                    Text(
                      'Boris',
                      style: blackTextStyle.copyWith(
                        fontWeight: medium,
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
                Text(
                  'Online',
                  style: blueTextStyle.copyWith(
                    fontWeight: regular,
                    fontSize: 14,
                  ),
                )
              ],
            )
          ],
        ),
        actions: const [
          Icon(Icons.call_outlined),
          SizedBox(width: 18),
          Icon(Icons.more_vert_rounded),
          SizedBox(width: 18),
        ],
      ),
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: ListView(
              reverse: true,
              shrinkWrap: true,
              primary: true,
              children: [
                Column(
                  children: [
                    const SizedBox(height: 10),
                    Text(
                      'Today 8:43 AM',
                      style: greyTextStyle,
                    ),
                    BubbleNormalImage(
                      id: 'id003',
                      image: Image.asset('assets/img_chat.png'),
                      // color: Colors.purpleAccent,
                      tail: true,
                      isSender: false,
                      delivered: true,
                    ),
                    const BubbleSpecialThree(
                      text: 'Oh yes this looks great!',
                      color: Color(0xFF1B97F3),
                      tail: false,
                      isSender: false,
                      textStyle: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    BubbleNormalImage(
                      id: 'id001',
                      image: Image.asset('assets/emoji.png'),
                      tail: true,
                      isSender: false,
                      delivered: true,
                    ),
                    const BubbleSpecialThree(
                      text: 'Added iMessage shape bubbles',
                      color: Color(0xFF1B97F3),
                      tail: false,
                      isSender: true,
                      textStyle: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    BubbleNormalAudio(
                      color: const Color(0xFFE8E8EE),
                      duration: duration.inSeconds.toDouble(),
                      position: position.inSeconds.toDouble(),
                      isPlaying: isPlaying,
                      isLoading: isLoading,
                      isPause: isPause,
                      onSeekChanged: (value) {},
                      onPlayPauseButtonClick: () {},
                      sent: true,
                      isSender: false,
                    ),
                    const SizedBox(height: 150),
                  ],
                )
              ],
            ),
          ),
          const CustomMessageBar()
        ],
      ),
    );
  }
}
