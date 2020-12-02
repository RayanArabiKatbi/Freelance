
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../constants.dart';

class SaveButton extends StatelessWidget {
  final String title;
  final Function onPressed;
  final double width;
  final double height;
  final Color backgroundColor;
  final Color textColor;
  final IconData icon;
  final TextStyle textStyle;

  const SaveButton({
    Key key,
    @required this.onPressed,
    this.title = 'حفظ',
    this.textStyle,
    this.icon,
    this.width,
    this.height,
    this.backgroundColor = kMiddleColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Container(
        width: width,
        height: height,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              title,
              textAlign: TextAlign.center,
              style: textStyle
//                  Theme.of(context).textTheme.button.copyWith(color: textColor),
            ),
            if (icon != null) ...[
              SizedBox(
                width: kInPadding,
              ),
              Icon(icon)
            ]
          ],
        ),
      ),
      onPressed: onPressed,
      textColor: textColor,
      color: backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    );
  }
}
