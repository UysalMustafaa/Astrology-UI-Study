import 'package:astrology/core/widgets/custom_page_scaffold.dart';
import 'package:astrology/core/extensions/context_extension.dart';
import 'package:astrology/core/constants/color_constants.dart';

import 'package:flutter/material.dart';

class CardPickSecond extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPageScaffold(
        title: 'Yükselen Burç Neden Önemlidir?',
        buttonTitle: '',
        hasButton: false,
        body: Text(
            'Soruların cevaplarını sırayla yazacağım ama önce “yükselen burç nedir” kısmıyla başlayalım. Bir anlığına kendinizi bir pasta olarak hayal edin. :) Bu pastanın içeriği kişisel gezegenlerin durumu ile renklenecek olsa da öz yapısı yani hamuru Güneş burcunuzdur. Ancak pastayı ilk gören kişi haliyle siz ona bir dilim sunmadıkça içini değil dış kaplamasını görecektir. İşte o dış kaplama da aslında bizim yükselen burcumuzdur. Bu pasta çok göz alıcı bir kaplamaya sahip ama sade lezzetli bir hamura sahip olabilir, ya da tam tersi çok sade bir kaplamaya sahip olup içerisinden bir sürü sürprizler çıkabilir. Yani özetle yükselen burç bizim kendimizi dış dünyaya yansıttığımız ve en önemlisi dış dünyadan nasıl algılandığımızı anlatır. Bir de pastayı kestiğimizde artık fındık mı çıkar, taş mı çıkar bilemeyeceğimiz en iç bölümü vardır ki bu da Ay burcudur. :) İnsanlar önce yükselen burcumuzu “görürler”, tanıdıkça “Güneş” ve sonra “Ay” burcumuzu algılamaya başlarlar.',
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
