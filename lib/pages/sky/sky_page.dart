import 'package:astrology/core/constants/color_constants.dart';
import 'package:astrology/core/widgets/custom_card.dart';
import 'package:astrology/core/widgets/custom_page_scaffold.dart';
import 'package:astrology/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class SkyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPageScaffold(
        title: 'Gökyüzüne Sor',
        hasButton: false,
        buttonTitle: 'Gökyüzüne Sor',
        body: Column(
          children: <Widget>[
            Text(
                'Bu bölümde, yükselen burcunuza göre yazılmış zozo yılı astroloji öngörülerini bulabilirsiniz. Yükselen burcunuzu öğrenmek ve tamamen size özel hazırladığımız doğum haritası analizine ilişkin bilgi almak için bize mesaj gönderebilirsiniz.',
                style: context.appTheme().cardPickTextStyle),
            sizedBoxItem(context),
            Row(
              children: <Widget>[
                Expanded(child: CustomCard(title: 'Koç')),
                sizedBoxItem(context),
                Expanded(child: CustomCard(title: 'Boğa')),
              ],
            ),
            sizedBoxItem(context),
            Row(
              children: <Widget>[
                Expanded(child: CustomCard(title: 'İkizler')),
                sizedBoxItem(context),
                Expanded(child: CustomCard(title: 'Yengeç')),
              ],
            ),
            sizedBoxItem(context),
            Row(
              children: <Widget>[
                Expanded(child: CustomCard(title: 'Aslan')),
                sizedBoxItem(context),
                Expanded(child: CustomCard(title: 'Başak')),
              ],
            ),
            sizedBoxItem(context),
            Row(
              children: <Widget>[
                Expanded(child: CustomCard(title: 'Terazi')),
                sizedBoxItem(context),
                Expanded(child: CustomCard(title: 'Akrep')),
              ],
            ),
            sizedBoxItem(context),
            Row(
              children: <Widget>[
                Expanded(child: CustomCard(title: 'Yay')),
                sizedBoxItem(context),
                Expanded(child: CustomCard(title: 'Oğlak')),
              ],
            ),
            sizedBoxItem(context),
            Row(
              children: <Widget>[
                Expanded(child: CustomCard(title: 'Kova')),
                sizedBoxItem(context),
                Expanded(child: CustomCard(title: 'Balık')),
              ],
            ),
          ],
        ),
        onBackPressed: () {
          Navigator.pop(context);
        },
        onButtonPressed: () {},
        pageColor: ColorConstants.Malibu,
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
