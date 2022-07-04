import 'package:astrology/core/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:astrology/core/extensions/context_extension.dart';

class HomeListCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final Color color;
  final void Function() onPress;

  const HomeListCard(
      {this.title, this.description, this.icon, this.color, this.onPress})
      : super();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: ColorConstants.White,
      borderRadius: BorderRadius.circular(context.dynamicWidth(0.05)),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {
          onPress();
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Icon(
                icon,
                size: context.dynamicHeight(0.05),
                color: color,
              ),
              SizedBox(
                width: 12,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: context.appTheme().homeListCardTextStyle,
                    ),
                    Text(
                      description,
                      style:
                          context.appTheme().homeListCardDescriptionTextStyle,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
