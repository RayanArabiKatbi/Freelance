import 'package:changehorizonsfreelancer/constants.dart';
import 'package:flutter/material.dart';

/*Pending
* 1-font must be changed, & sizes. Done.
* 2- get the actual color button color. Done.
* 3- to be clickable effect. ? It doesn't need to.
* */

class TextLink extends StatelessWidget {
  final String text;
  final Function onPressed;
  final Color color;
  final double textSize;
  final bool underlined;

  const TextLink(this.text,
      {this.textSize = 14,
      this.onPressed,
      this.color,
      this.underlined = false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Text(
        text,
        style: Theme.of(context).textTheme.headline.copyWith(
            // doesn't work
            decoration:
                underlined ? TextDecoration.underline : TextDecoration.none,
            fontSize: textSize,
            color: color == null ? kRightColor : color),
      ),
    );
  }
}
