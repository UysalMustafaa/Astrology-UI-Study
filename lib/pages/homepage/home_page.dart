import 'package:astrology/core/widgets/custom_bottom_bar.dart';
import 'package:astrology/core/widgets/home_list_card.dart';
import 'package:astrology/pages/question/question_page.dart';
import 'package:astrology/pages/sky/sky_page.dart';

import 'package:flutter/material.dart';

import '../card_pick/card_pick_page.dart';
import '../music/musics_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2C3639),
      bottomNavigationBar: CustomBottomBar(
        currentIndex: _currentTab,
        onTap: (int val) {
          if (val == _currentTab) return;
          setState(() {
            _currentTab = val;
          });
        },
        items: [
          CustomBottomBarItem(
            icon: Icons.home,
          ),
          CustomBottomBarItem(icon: Icons.bookmark),
          CustomBottomBarItem(icon: Icons.person),
          CustomBottomBarItem(icon: Icons.settings)
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        /* Text(
                          'Cebimdeki',
                          style: TextStyle(
                            color: Color(0xFFD3EBCD),
                            fontWeight: FontWeight.w500,
                            fontSize: 28,
                          ),
                        ),*/
                        /*  Text(
                          'Cevaplar',
                          style: TextStyle(
                            color: Color.fromRGBO(69, 107, 255, 1),
                            fontWeight: FontWeight.w900,
                            fontSize: 28,
                          ),
                        )*/
                      ],
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.notification_important,
                      size: 32,
                      color: Color(0xFFffffff),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Expanded(
                child: SingleChildScrollView(
              padding: EdgeInsets.all(16),
              child: Column(
                children: <Widget>[
                  HomeListCard(
                    title: 'Soru Sor',
                    description:
                        'Bilmek istediğin sorunun cevabı belki de sorularda yatıyor.',
                    icon: Icons.zoom_out_map,
                    color: Color.fromRGBO(254, 87, 65, 1),
                    onPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => QuestionPage(),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  HomeListCard(
                    title: 'Kart Seç',
                    description:
                        'Bilmek istediğin sorunun cevabı belki de kartlarda yatıyor.',
                    icon: Icons.card_travel,
                    color: Color.fromRGBO(0, 234, 150, 1),
                    onPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CardPickPage(),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  HomeListCard(
                    title: 'Şarkılara Sor',
                    description:
                        'Bilmek istediğin sorunun cevabı belki de şarkılarda yatıyor.',
                    icon: Icons.music_note,
                    color: Color.fromRGBO(160, 91, 248, 1),
                    onPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MusicsPage(),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  HomeListCard(
                    title: 'Gökyüzüne Sor',
                    description:
                        'Bilmek istediğin sorunun cevabı belki de gökyüzünde yatıyor.',
                    icon: Icons.cloud,
                    color: Color.fromRGBO(42, 150, 251, 1),
                    onPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SkyPage(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
