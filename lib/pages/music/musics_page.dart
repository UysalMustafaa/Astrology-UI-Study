import 'package:astrology/core/constants/color_constants.dart';
import 'package:astrology/core/widgets/custom_page_scaffold.dart';
import 'package:astrology/pages/music/music_second.dart';
import 'package:astrology/core/extensions/context_extension.dart';

import 'package:flutter/material.dart';

class MusicsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.OuterSpace,
      body: CustomPageScaffold(
        title: 'Şarkılara Sor',
        buttonTitle: 'Şarkılara Sor',
        body: Text(
            'Bugün senin için ne düşünüyor?\n\nPlanlarınız neler?\n\nİlişkiniz nereye gidiyor?',
            style: context.appTheme().cardPickTextStyle),
        onBackPressed: () {
          Navigator.pop(context);
        },
        onButtonPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MusicSecond(),
            ),
          );
        },
        pageColor: ColorConstants.JazzBerryJam,
      ),
    );
  }
}
