import 'package:astrology/core/constants/color_constants.dart';
import 'package:astrology/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  const CustomCard({
    Key key,
    @required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            child: Text(title, style: context.appTheme().customCardTextStyle),
          ),
        ),
      ),
    );
  }
}
