import 'package:astrology/core/constants/color_constants.dart';
import 'package:astrology/core/widgets/custom_page_scaffold.dart';
import 'package:astrology/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class CardPickThree extends StatelessWidget {
  const CardPickThree({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPageScaffold(
        title: 'Astroloji hangi sorulara cevap vermez?',
        buttonTitle: '',
        hasButton: false,
        body: Text(
            'Özel bir teknik olan Soru Astrolojisi (Horary) danışanın önemli sorularına cevap verebilmek için oluşturulmuş bir tekniktir. Ancak ne olursa olsun bazı soruların cevabının verilmesi sağlıklı değildir. Başkalarının ölümü, ağır hastalığı hakkında karanlık doğadaki sorulara asla cevap verilmez. İnsanın evleneceği, çalışacağı vb kişinin burcu söylenemez. Evlilik evi girişi, alçalan evleneceğiniz kişinin burcu değildir. “Hakkımda neler düşünüyor” gibi kişinin tamamen zihni ile alakalı ya da “Adının içinde hangi harfler var” gibi fal soruları astrolojide bulunmaz. Astroloji iki kişi arasındaki uyumu ve potansiyeli araştırır; mutluluk ve zorlanmalara dair olası dönemleri inceler.',
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
