import 'package:astrology/core/constants/color_constants.dart';
import 'package:astrology/core/widgets/custom_bottom_bar.dart';
import 'package:astrology/core/widgets/home_list_card.dart';
import 'package:astrology/pages/question/question_page.dart';
import 'package:astrology/core/extensions/context_extension.dart';
import 'package:astrology/pages/sky/sky_page.dart';
import 'package:flutter/material.dart';
import 'package:astrology/pages/card_pick/card_pick_page.dart';
import 'package:astrology/pages/music/musics_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.OuterSpace,
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
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Zihnimdeki',
                          style: context.appTheme().homePageHeaderTextStyle,
                        ),
                        Text(
                          'Cevaplar',
                          style: context.appTheme().homePageHeaderTextStyle,
                        )
                      ],
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.notification_important,
                      size: context.dynamicHeight(0.05),
                      color: ColorConstants.White,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Expanded(
                child: SingleChildScrollView(
              padding: EdgeInsets.all(context.dynamicWidth(0.05)),
              child: Column(
                children: <Widget>[
                  HomeListCard(
                    title: 'Soru Sor',
                    description:
                        'Bilmek istediğin sorunun cevabı belki de sorularda yatıyor.',
                    icon: Icons.zoom_out_map,
                    color: ColorConstants.RedBerry,
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
                    height: context.dynamicHeight(0.03),
                  ),
                  HomeListCard(
                    title: 'Kart Seç',
                    description:
                        'Bilmek istediğin sorunun cevabı belki de kartlarda yatıyor.',
                    icon: Icons.card_travel,
                    color: ColorConstants.BattleshipGray,
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
                    height: context.dynamicHeight(0.03),
                  ),
                  HomeListCard(
                    title: 'Şarkılara Sor',
                    description:
                        'Bilmek istediğin sorunun cevabı belki de şarkılarda yatıyor.',
                    icon: Icons.music_note,
                    color: ColorConstants.JazzBerryJam,
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
                    height: context.dynamicHeight(0.03),
                  ),
                  HomeListCard(
                    title: 'Gökyüzüne Sor',
                    description:
                        'Bilmek istediğin sorunun cevabı belki de gökyüzünde yatıyor.',
                    icon: Icons.cloud,
                    color: ColorConstants.Malibu,
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
