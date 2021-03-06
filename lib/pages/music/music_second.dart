import 'package:astrology/core/constants/color_constants.dart';
import 'package:astrology/core/widgets/custom_page_scaffold.dart';
import 'package:astrology/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class MusicSecond extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPageScaffold(
        title: 'Tom Odell / Heal',
        hasButton: false,
        body: Text(
          '''
Take my mind
And take my pain
Like an empty bottle takes the rain
And heal, heal, heal, heal

And take my past
And take my sense
Like an empty sail takes the wind
And heal, heal, heal, heal

And tell me somethings last
And tell me somethings last

Take a heart
And take a hand
Like an ocean takes the dirty sand
And heal, heal, hell, heal

Take my mind
And take my pain

Like an empty bottle takes the rain
And heal, heal, hell, heal
And tell me somethings last 
          ''',
          style: context.appTheme().cardPickTextStyle,
        ),
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
