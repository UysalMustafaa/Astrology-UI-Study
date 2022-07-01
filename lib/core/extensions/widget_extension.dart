import 'package:flutter/material.dart';
import 'package:astrology/core/extensions/context_extension.dart';

extension WidgetExtension on Widget {
  Widget get fittedDown {
    return FittedBox(
        alignment: Alignment.centerLeft, fit: BoxFit.scaleDown, child: this);
  }
}

extension TextExtension on Text {
  Text scaleScreen(BuildContext context) {
    return Text(
      this.data,
      style: this.style,
      softWrap: this.softWrap,
      key: this.key,
      textAlign: this.textAlign,
      overflow: this.overflow,
      locale: this.locale,
      maxLines: this.maxLines,
      semanticsLabel: this.semanticsLabel,
      strutStyle: this.strutStyle,
      textDirection: this.textDirection,
      textHeightBehavior: this.textHeightBehavior,
      textWidthBasis: this.textWidthBasis,
      textScaleFactor: context.appTheme()?.deviceScreenScale(
          scaleFactor: context.appTheme().textScaleFactorFromFontSize(
              fontSize: this.style.fontSize, context: context),
          context: context),
    );
  }
}
