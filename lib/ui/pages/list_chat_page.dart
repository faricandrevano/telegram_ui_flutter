import 'package:flutter/material.dart';
import 'package:tugas5_telegram/data/data_chat.dart';
import 'package:tugas5_telegram/shared/theme.dart';
import 'package:tugas5_telegram/ui/widget/list_tile_widget.dart';

class ListChatPage extends StatefulWidget {
  const ListChatPage({super.key});

  @override
  State<ListChatPage> createState() => _ListChatPageState();
}

class _ListChatPageState extends State<ListChatPage>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          titleSpacing: 0,
          backgroundColor: lightColor,
          automaticallyImplyLeading: false,
          title: TabBar(
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            controller: _tabController,
            indicatorColor: blueColor,
            labelColor: blueColor,
            tabs: [
              Tab(
                child: Row(
                  children: [
                    const Text('All Chat'),
                    const SizedBox(width: 10),
                    Container(
                      alignment: Alignment.center,
                      width: 31,
                      height: 24,
                      decoration: BoxDecoration(
                        color: blueColor,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Text(
                        '16',
                        style: whiteTextStyle.copyWith(
                          fontWeight: medium,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Tab(
                text: 'News',
              ),
              const Tab(
                text: 'Design',
              ),
              const Tab(
                text: 'Reading',
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: TabBarView(
            controller: _tabController,
            children: [
              ListView.separated(
                separatorBuilder: (context, index) {
                  if (data[index]['pinned'] == true) {
                    return const Divider(
                      color: Color(0xffB5E6FA),
                      height: 1,
                    );
                  } else {
                    return const Divider(color: Color(0xffE2F5FD));
                  }
                },
                itemBuilder: (context, index) {
                  if (data[index]['pinned'] == true &&
                      data[index]['sticker'] == true) {
                    return CustomListTile(
                      nama: data[index]['nama'],
                      img: data[index]['img'],
                      waktu: data[index]['waktu'],
                      message: data[index]['message'],
                      pinned: true,
                      sticker: true,
                      grup: false,
                    );
                  } else if (data[index]['pinned'] == true) {
                    return CustomListTile(
                      nama: data[index]['nama'],
                      img: data[index]['img'],
                      waktu: data[index]['waktu'],
                      message: data[index]['message'],
                      pinned: true,
                      grup: false,
                    );
                  } else if (data[index]['grup'] == true) {
                    return CustomListTile(
                      nama: data[index]['nama'],
                      img: data[index]['img'],
                      waktu: data[index]['waktu'],
                      message: data[index]['message'],
                      grup: true,
                      message2: data[index]['message2'],
                    );
                  } else if (data[index]['read'] == true) {
                    return CustomListTile(
                      nama: data[index]['nama'],
                      img: data[index]['img'],
                      waktu: data[index]['waktu'],
                      message: data[index]['message'],
                      grup: false,
                      read: true,
                    );
                  } else {
                    return CustomListTile(
                      nama: data[index]['nama'],
                      img: data[index]['img'],
                      waktu: data[index]['waktu'],
                      message: data[index]['message'],
                      grup: false,
                    );
                  }
                },
                itemCount: data.length,
              ),
              Container(),
              Container(),
              Container(),
            ],
          ),
        ),
      ],
    );
  }
}
