
import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final Function onPressed;
  final double elevation;
  final Color fillColor;
  final Widget child;
  final EdgeInsetsGeometry padding;

  const RoundButton(
      {Key key,
      this.onPressed,
      this.elevation,
      this.fillColor,
      this.padding,
      this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        type: MaterialType.transparency,
        elevation: elevation ?? 0.0,
        shape: CircleBorder(),
        child: InkWell(
          onTap: onPressed,
          child: Ink(
            padding: padding ?? EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              color: fillColor,
              shape: BoxShape.circle,
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
