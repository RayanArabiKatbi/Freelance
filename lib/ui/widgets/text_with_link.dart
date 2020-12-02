
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class TextWithLink extends StatelessWidget {
  final String label;
  final String linkLabel;
  final Function onLinkTapped;
  final bool underlinedLink;
  final Color linkColor;

  const TextWithLink({
    Key key,
    this.label = '',
    @required this.linkLabel,
    this.onLinkTapped,
    this.underlinedLink = false,
    this.linkColor = kRightColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: label,
        style: Theme.of(context).textTheme.headline,
        children: [
          TextSpan(text: ' '),
          TextSpan(
            text: linkLabel,
            style: Theme.of(context).textTheme.headline.copyWith(
                  decoration: underlinedLink
                      ? TextDecoration.underline
                      : TextDecoration.none,
                  color: linkColor,
                  fontWeight: FontWeight.bold,
                ),
            recognizer: TapGestureRecognizer()..onTap = onLinkTapped,
          )
        ],
      ),
    );
  }
}
