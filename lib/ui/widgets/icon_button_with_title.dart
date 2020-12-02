import 'dart:math';

import 'package:changehorizonsfreelancer/constants.dart';
import 'package:flutter/material.dart';

import '../../helpers/screen_helper.dart';

//sevices
class IconButtonWithTitle extends StatelessWidget {
  final String title;
  final IconData iconData;
  final Color backgroundColor;
  final Color color;
  final Function onTap;

  IconButtonWithTitle(
      {@required this.title,
      @required this.iconData,
      this.backgroundColor = kLightPinkBackground,
      this.color = kDarkPinkForeground,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final width =
          min(max(constraints.maxWidth, constraints.maxHeight), 100.0);
      return Material(
        child: Ink(
          width: width,
          decoration: ShapeDecoration(
            shape: CircleBorder(),
          ),
          child: InkWell(
            onTap: onTap,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: backgroundColor,
                  child: Icon(
                    iconData,
                    color: color,
                  ),
                ),
                SizedBox(
                  height: ScreenHelper.screenHeight(context, 5.0),
                ),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline.copyWith(
                        color: color,
                      ),
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
