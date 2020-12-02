//Created by Moustafa Essam

import 'package:changehorizonsfreelancer/constants.dart';
import 'package:changehorizonsfreelancer/helpers/screen_helper.dart';
import 'package:flutter/material.dart';

class CheckItem extends StatelessWidget {
  final bool checkValue;
  final String title;
  final Function(bool) onChange;
  final Color backgroundColor;

  const CheckItem(
      {this.checkValue,
      this.title,
      this.onChange,
      this.backgroundColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
          color: backgroundColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Text(
            title.trim(),
            style: Theme.of(context).textTheme.subhead.copyWith(
              color: Colors.pink.shade300,
            ),
          ),
          SizedBox(
            height: ScreenHelper.screenHeight(context, 30),
            width: ScreenHelper.screenHeight(context, 35),
            child: Checkbox(
              onChanged: onChange,
              value: checkValue,
              checkColor: Colors.white,
              activeColor: kRightColor,
              hoverColor: kRightColor,
            ),
          ),

        ],
      ),
    );
  }
}
