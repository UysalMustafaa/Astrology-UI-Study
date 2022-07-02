import 'package:astrology/core/constants/color_constants.dart';
import 'package:astrology/core/widgets/custom_page_scaffold.dart';
import 'package:astrology/pages/card_pick/card_pick_second.dart';
import 'package:astrology/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class CardPickPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPageScaffold(
        title: 'Kart Seç',
        buttonTitle: 'Kartlara Sor',
        body: Text(
          'Bilmek istediğin sorunun cevabı belki de kartlarda yatıyor. Sorunu, kadim öğretilerden, sembollerden, mitler ve arketiplerden yola çıkarak hazırlanmış kartlara da sorabilirsin. Diyelim ki net bir sorun yok, o zaman da bugünün veya içinden geçtiğin dönemin sana mesajının ne olduğunu kartlara sorabilirsin. \n\nKarttaki mesajı alabilmen için biraz soyut ve sembolik düşünmen gerekiyor. Genelde çok analitik düşünen biriysen, buradaki mesajı bilinçli aklın yerine kalbinle duymaya çalışmanı öneriririz.',
          style: context.appTheme().cardPickTextStyle,
        ),
        onBackPressed: () {
          Navigator.pop(context);
        },
        onButtonPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CardPickSecond(),
            ),
          );
        },
        pageColor: ColorConstants.BattleshipGray,
        hasButton: true,
      ),
    );
  }
}
