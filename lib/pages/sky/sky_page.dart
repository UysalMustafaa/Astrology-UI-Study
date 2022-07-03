import 'package:astrology/core/constants/color_constants.dart';
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
        buttonTitle: 'Şarkılara Sor',
        body: Column(
          children: <Widget>[
            Text(
              'Bu bölümde, yükselen burcunuza göre yazılmış zozo yılı astroloji öngörülerini bulabilirsiniz. Yükselen burcunuzu öğrenmek ve tamamen size özel hazırladığımız doğum haritası analizine ilişkin bilgi almak için bize mesaj gönderebilirsiniz.',
              style: TextStyle(fontSize: 16, height: 1.6),
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: <Widget>[
                Expanded(child: _buildZodiacItem('Koç')),
                SizedBox(
                  width: 12,
                ),
                Expanded(child: _buildZodiacItem('Boğa')),
              ],
            ),
            SizedBox(
              height: context.dynamicHeight(0.025),
            ),
            Row(
              children: <Widget>[
                Expanded(child: _buildZodiacItem('İkizler')),
                SizedBox(
                  width: 12,
                ),
                Expanded(child: _buildZodiacItem('Yengeç')),
              ],
            ),
            SizedBox(
              height: context.dynamicHeight(0.025),
            ),
            Row(
              children: <Widget>[
                Expanded(child: _buildZodiacItem('Aslan')),
                SizedBox(
                  width: 12,
                ),
                Expanded(child: _buildZodiacItem('Başak')),
              ],
            ),
            SizedBox(
              height: context.dynamicHeight(0.025),
            ),
            Row(
              children: <Widget>[
                Expanded(child: _buildZodiacItem('Terazi')),
                SizedBox(
                  width: 12,
                ),
                Expanded(child: _buildZodiacItem('Akrep')),
              ],
            ),
            SizedBox(
              height: context.dynamicHeight(0.025),
            ),
            Row(
              children: <Widget>[
                Expanded(child: _buildZodiacItem('Yay')),
                SizedBox(
                  width: 12,
                ),
                Expanded(child: _buildZodiacItem('Oğlak')),
              ],
            ),
            SizedBox(
              height: context.dynamicHeight(0.025),
            ),
            Row(
              children: <Widget>[
                Expanded(child: _buildZodiacItem('Kova')),
                SizedBox(
                  width: 12,
                ),
                Expanded(child: _buildZodiacItem('Balık')),
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

  Widget _buildZodiacItem(String title) {
    return Material(
      elevation: 4,
      shadowColor: ColorConstants.Black,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
          child: Center(
            child: Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
          ),
        ),
      ),
    );
  }
}
