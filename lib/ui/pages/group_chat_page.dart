import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter/material.dart';
import 'package:tugas5_telegram/shared/theme.dart';
import 'package:tugas5_telegram/ui/widget/message_bar.dart';

class GroupChatPage extends StatelessWidget {
  const GroupChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightColor,
      appBar: AppBar(
        backgroundColor: lightColor,
        surfaceTintColor: lightColor,
        leading: GestureDetector(
          child: const Icon(Icons.arrow_back),
          onTap: () =>
              Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false),
        ),
        title: Row(
          children: [
            CircleAvatar(
              child: Image.asset('assets/img_avatar_3.png'),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Maldives',
                      style: blackTextStyle.copyWith(
                        fontWeight: medium,
                        fontSize: 16,
                      ),
                    ),
                    const Icon(
                      color: Color(0xff758D94),
                      Icons.volume_off,
                      size: 17,
                    ),
                    const SizedBox(width: 8.4),
                  ],
                ),
                Text(
                  '12 017 members',
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
          CustomScrollView(
            shrinkWrap: true,
            slivers: [
              SliverAppBar(
                surfaceTintColor: Colors.transparent,
                backgroundColor: const Color(0xffE2F5FD),
                floating: true,
                pinned: true,
                automaticallyImplyLeading: true,
                leading: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 2,
                      height: 8.33,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1),
                        color: const Color(0xffC2CED1),
                      ),
                    ),
                    const SizedBox(height: 2),
                    Container(
                      width: 2,
                      height: 8.33,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1),
                        color: const Color(0xffC2CED1),
                      ),
                    ),
                    const SizedBox(height: 2),
                    Container(
                      width: 2,
                      height: 8.33,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1),
                        color: const Color(0xff2AABEE),
                      ),
                    ),
                    const SizedBox(height: 2),
                  ],
                ),
                title: Row(
                  children: [
                    Image.asset('assets/img_pinned.png'),
                    const SizedBox(width: 6),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Pinned Message',
                          style: blueTextStyle.copyWith(
                              fontSize: 13, fontWeight: medium),
                        ),
                        Text(
                          'I think that we easily can win this contest...',
                          style: greyTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: medium,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                titleSpacing: -13,
                actions: const [
                  Icon(
                    Icons.close,
                    color: Color(0xff9CADB2),
                  ),
                  SizedBox(width: 16),
                ],
              ),
              SliverToBoxAdapter(
                child: Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Column(
                        children: [
                          const SizedBox(height: 10),
                          Text(
                            'Today 8:43 AM',
                            style: greyTextStyle,
                          ),
                          BubbleNormalImage(
                            id: 'id002',
                            image: Image.asset('assets/img_chat.png'),
                            tail: true,
                            isSender: true,
                            seen: true,
                            delivered: true,
                            color: const Color(0xffE2F5FD),
                          ),
                          const BubbleSpecialThree(
                            text: 'Oh yes this looks great!',
                            tail: true,
                            isSender: false,
                            textStyle: TextStyle(
                              color: Color(0xff030C14),
                              fontSize: 16,
                            ),
                            color: Color(0xffE2F5FD),
                          ),
                          BubbleNormalImage(
                            id: 'id001',
                            image: Image.asset('assets/emoji.png'),
                            tail: true,
                            isSender: false,
                          ),
                          const BubbleSpecialThree(
                            text: 'Added iMessage shape bubbles',
                            color: Color(0xFF1B97F3),
                            tail: true,
                            isSender: true,
                            seen: true,
                            textStyle:
                                TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          BubbleNormalImage(
                            id: 'id003',
                            image: Image.asset('assets/emoji.png'),
                            tail: true,
                            isSender: true,
                            delivered: true,
                            seen: true,
                          ),
                          const BubbleSpecialThree(
                            text: 'wkwkwkwk',
                            color: Color(0xFF1B97F3),
                            tail: true,
                            isSender: true,
                            seen: true,
                            textStyle:
                                TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          const SizedBox(height: 90),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const CustomMessageBar()
        ],
      ),
    );
  }
}
