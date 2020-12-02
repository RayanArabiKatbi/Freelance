import 'package:changehorizonsfreelancer/constants.dart';
import 'package:flutter/material.dart';

import '../../helpers/screen_helper.dart';

//sevices
class ProgressBar extends StatelessWidget {
  final int rate;
  final Color background;
  final Color foreground;

  const ProgressBar(
      {this.rate = 0,
      this.background = kDarkHeaderBackground,
      this.foreground});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double barWidth = rate / 100 * constraints.maxWidth;
      return Container(
        width: constraints.maxWidth,
        height: ScreenHelper.screenHeight(context, 10.0),
        decoration: ShapeDecoration(
          shape: StadiumBorder(),
          color: background,
        ),
        alignment: Alignment.centerLeft,
        child: Container(
          width: barWidth,
          decoration: ShapeDecoration(
            gradient: LinearGradient(colors: <Color>[
              kMiddleColor,
              kDarkPinkForeground,
            ]),
            shape: StadiumBorder(),
          ),
        ),
      );
    });
  }
}
