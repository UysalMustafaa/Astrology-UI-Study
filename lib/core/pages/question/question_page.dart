import 'package:astrology/core/constants/color_constants.dart';
import 'package:astrology/core/widgets/custom_page_scaffold.dart';
import 'package:flutter/material.dart';

class QuestionPage extends StatefulWidget {
  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPageScaffold(
        title: 'Soru Sor',
        buttonTitle: 'Bilmek İstiyorum',
        body: Text(
          'Hepimizin bazen bir rehbere veya işarete ihtiyacı olur. Bu kısmı bilmek istediğin şey konusunda bir işaret ve cevap alabilmen için düzenledik.\n\nBana herhangi bir şey sorabilirsin. Yeter ki sorun gerçek ve samimi bir evet / hayır sorusu olsun.\n\nŞimdi zihnini boşalt, bir süreliğine soruna odaklan ve hazır olduğunda aşağıdaki butona bas.',
          style: TextStyle(fontSize: 16, height: 1.6),
        ),
        onBackPressed: () {
          Navigator.pop(context);
        },
        onButtonPressed: () {},
        pageColor: ColorConstants.RedBerry,
        hasButton: true,
      ),
    );
  }
}
