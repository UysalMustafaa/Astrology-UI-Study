import 'package:astrology/core/widgets/custom_page_scaffold.dart';
import 'package:astrology/core/extensions/context_extension.dart';
import 'package:astrology/core/constants/color_constants.dart';

import 'package:flutter/material.dart';

class CardPickSecond extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPageScaffold(
        title: 'Cömertlik',
        buttonTitle: '',
        hasButton: false,
        body: Text(
            'Bu kartı seçtiyseniz, hiç bir karşılık beklemeden bir şeyler vermeniz veya bir yardım yapmanız önerilir. Ne olduğu önemli değildir. Maddi bir değer olması gerekmez. Önemli olan kalbinizi karşılık beklemeden başkalarına açmanızdır.\n\nCömertlik, sizi kıtlık duygusundan ve bilincinden çekip çıkarır. Bolluk bilincine yönlendirir.',
            style: context.appTheme().cardPickTextStyle),
        onBackPressed: () {
          Navigator.pop(context);
        },
        onButtonPressed: () {},
        pageColor: ColorConstants.BattleshipGray,
      ),
    );
  }
}
