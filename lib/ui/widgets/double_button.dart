import 'package:changehorizonsfreelancer/constants.dart';
import 'package:flutter/material.dart';

import '../../helpers/screen_helper.dart';
//sevices

class DoubleButton extends StatelessWidget {
  final Function onFirst;
  final Function onSecond;
  final String firstTitle;
  final String secondTitle;
  final IconData firstIcon;
  final IconData secondIcon;
  final Color firstColor;
  final Color secondColor;

  const DoubleButton(
      {this.onFirst,
      this.onSecond,
      this.firstTitle,
      this.secondTitle,
      this.firstColor = kMiddleColor,
      this.secondColor = Colors.white,
      this.firstIcon,
      this.secondIcon});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Ink(
        height: ScreenHelper.screenHeight(context, 30),
        child: Row(
          children: <Widget>[
            Expanded(
              child: InkWell(
                onTap: onFirst,
                child: Container(
                  decoration: BoxDecoration(
                      color: firstColor,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(
                            ScreenHelper.screenWidth(context, 10.0)),
                      ),
                      border: Border.all(
                          color: firstColor,
                          width: 2.0,
                          style: BorderStyle.solid)),
                  child: Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        if (firstIcon != null) ...[
                          Icon(
                            firstIcon,
                            color: secondColor,
                          ),
                          SizedBox(
                            width: ScreenHelper.screenWidth(context, 5.0),
                          )
                        ],
                        Text(firstTitle,
                            style: Theme.of(context)
                                .textTheme
                                .headline5
                                .copyWith(color: secondColor),
                            textDirection: TextDirection.rtl),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: onSecond,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(
                            ScreenHelper.screenWidth(context, 10.0)),
                      ),
                      border: Border.all(
                          color: firstColor,
                          width: 2.0,
                          style: BorderStyle.solid)),
                  child: Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        if (secondIcon != null) ...[
                          Icon(
                            secondIcon,
                            color: firstColor,
                          ),
                          SizedBox(
                            width: ScreenHelper.screenWidth(context, 5.0),
                          )
                        ],
                        Text(secondTitle,
                            style: Theme.of(context)
                                .textTheme
                                .headline5
                                .copyWith(color: firstColor),
                            textDirection: TextDirection.rtl),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
