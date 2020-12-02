
import 'package:flutter/material.dart';

import '../../constants.dart';

class SkipButton extends StatelessWidget {
  final String title;
  final Widget child;
  final Function onPressed;
  final Color color;
  final double width;
  final double height;
  final TextStyle textStyle;

  SkipButton({
    Key key,
    @required this.onPressed,
    this.title,
    this.textStyle,
    this.color = kMiddleColor,
    this.child,
    this.width,
    this.height,
  }) : super(key: key) {
    if (child != null && title != null) {
      throw "Title and Child can't be both not null";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: width,
      //height: height,
      alignment: Alignment.center,
      child: OutlineButton(
        child: Container(
          width: width,
          height: height,
          alignment: Alignment.center,
          child: child ?? Text(title ?? 'تخطي',style: textStyle),
        ),
        onPressed: onPressed,
        borderSide: BorderSide(color: color, width: 1),
        textColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}
