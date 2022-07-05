import 'package:astrology/core/constants/color_constants.dart';
import 'package:astrology/core/widgets/custom_card.dart';
import 'package:astrology/core/widgets/custom_page_scaffold.dart';
import 'package:astrology/pages/card_pick/card_pick_second.dart';
import 'package:astrology/core/extensions/context_extension.dart';
import 'package:astrology/pages/card_pick/card_pick_three.dart';
import 'package:flutter/material.dart';

class CardPickPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPageScaffold(
        title: 'Kart Seç',
        buttonTitle: 'Kartlardan Öğren',
        body: Column(
          children: [
            Text(
              'Bilmek istediğin sorunun cevabı belki de kartlarda yatıyor. Sorunu, kadim öğretilerden, sembollerden, mitler ve arketiplerden yola çıkarak hazırlanmış kartlara da sorabilirsin. Diyelim ki net bir sorun yok, o zaman da bugünün veya içinden geçtiğin dönemin sana mesajının ne olduğunu kartlara sorabilirsin. \n\nKarttaki mesajı alabilmen için biraz soyut ve sembolik düşünmen gerekiyor. Genelde çok analitik düşünen biriysen, buradaki mesajı bilinçli aklın yerine kalbinle duymaya çalışmanı öneriririz.',
              style: context.appTheme().cardPickTextStyle,
            ),
            sizedBoxItem(context),
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    child: CustomCard(
                        title: 'Yükselen burç neden önemlidir?',
                        onPress: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CardPickSecond(),
                            ),
                          );
                        },
                        buttonPress: true),
                  ),
                ),
                sizedBoxItem(context),
                Expanded(
                  child: CustomCard(
                      title: 'Astroloji hangi sorulara cevap vermez?',
                      onPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CardPickThree(),
                          ),
                        );
                      },
                      buttonPress: true),
                ),
              ],
            ),
          ],
        ),
        onBackPressed: () {
          Navigator.pop(context);
        },
        pageColor: ColorConstants.BattleshipGray,
        hasButton: false,
      ),
    );
  }

  Widget sizedBoxItem(BuildContext context) {
    return SizedBox(
      height: context.dynamicHeight(0.025),
      width: context.dynamicWidth(0.025),
    );
  }
}
