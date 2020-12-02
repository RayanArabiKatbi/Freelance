 
import 'package:changehorizonsfreelancer/constants.dart';
import 'package:flutter/material.dart';

import '../../helpers/screen_helper.dart';

class SwitchButton extends StatelessWidget {
  final Function(bool) onChange;
  final bool first;
  final String firstTitle;
  final String secondTitle;
  final Color backgroundColor;
  final Color activeColor;
  final Color activeTitleColor;
  final Color disabledTitleColor;

  const SwitchButton(
      {Key key,
      @required this.onChange,
      this.first = true,
      @required this.firstTitle,
      @required this.secondTitle,
      this.backgroundColor = kDarkHeaderBackground,
      this.activeColor = kMiddleColor,
      this.activeTitleColor = Colors.white,
      this.disabledTitleColor = Colors.grey})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final activeWidget = Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(
            vertical: ScreenHelper.screenHeight(context, 6)),
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          color: activeColor,
          borderRadius:
              BorderRadius.circular(ScreenHelper.screenWidth(context, 6.0)),
        ),
        child: Text(
          first ? firstTitle : secondTitle,
          style: Theme.of(context).textTheme.subtitle.copyWith(
                color: activeTitleColor,
              ),
        ),
      ),
    );
    final disabledWidget = Expanded(
      child: InkWell(
        onTap: () {
          onChange(!first);
        },
        child: Container(
          padding: EdgeInsets.symmetric(
              vertical: ScreenHelper.screenHeight(context, 6)),
          alignment: Alignment.bottomCenter,
          child: Text(
            !first ? firstTitle : secondTitle,
            style: Theme.of(context).textTheme.subtitle.copyWith(
                  color: disabledTitleColor,
                ),
          ),
        ),
      ),
    );
    return Material(
      child: Ink(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius:
              BorderRadius.circular(ScreenHelper.screenWidth(context, 6.0)),
        ),
        child: Row(
          children: first
              ? [activeWidget, disabledWidget]
              : [disabledWidget, activeWidget],
        ),
      ),
    );
  }
}
