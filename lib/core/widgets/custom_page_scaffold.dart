import 'package:flutter/material.dart';
import 'package:astrology/core/extensions/context_extension.dart';

class CustomPageScaffold extends StatelessWidget {
  final void Function() onBackPressed;
  final void Function() onButtonPressed;
  final String buttonTitle;
  final String title;
  final Widget body;
  final Color pageColor;
  final bool hasButton;

  const CustomPageScaffold(
      {this.onBackPressed,
      this.title,
      this.body,
      this.pageColor,
      this.buttonTitle,
      this.hasButton = true,
      this.onButtonPressed})
      : super();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Material(
                    child: InkWell(
                      borderRadius: BorderRadius.circular(12),
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: context.dynamicHeight(0.05),
                        width: context.dynamicWidth(0.1),
                        child: Center(
                          child: Icon(Icons.arrow_back_ios),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Text(
                      '$title',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Expanded(
                    child: Container(
                      padding:
                          EdgeInsets.only(top: context.dynamicHeight(0.005)),
                      decoration: BoxDecoration(
                          color: pageColor,
                          borderRadius: BorderRadius.only(
                            topLeft:
                                Radius.circular(context.dynamicWidth(0.07)),
                            topRight:
                                Radius.circular(context.dynamicWidth(0.07)),
                          )),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft:
                                Radius.circular(context.dynamicWidth(0.07)),
                            topRight:
                                Radius.circular(context.dynamicWidth(0.07)),
                          ),
                        ),
                        padding: EdgeInsets.all(context.dynamicHeight(0.02)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: SingleChildScrollView(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 24, horizontal: 16),
                                child: body,
                              ),
                            ),
                            hasButton
                                ? Material(
                                    borderRadius: BorderRadius.circular(16),
                                    color: pageColor,
                                    child: InkWell(
                                      borderRadius: BorderRadius.circular(16),
                                      onTap: () {
                                        onButtonPressed();
                                      },
                                      child: Container(
                                        height: context.dynamicHeight(0.07),
                                        width: context.dynamicWidth(1),
                                        child: Center(
                                          child: Text(
                                            buttonTitle,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                : Container(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
