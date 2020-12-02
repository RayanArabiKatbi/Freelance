import 'package:flutter/material.dart';

import 'round_button.dart';

class NotificationBell extends StatelessWidget {
  final bool showDot;
  final Function onTap;

  const NotificationBell({
    Key key,
    this.showDot,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RoundButton(
      child: Stack(
        children: <Widget>[
          Icon(
            Icons.notifications,
            color: Colors.white,
          ),
          if (showDot)
            Positioned(
              right: 1,
              bottom: 2,
              child: Container(
                child: AspectRatio(
                  aspectRatio: 1,
                ),
                width: 8,
                decoration: ShapeDecoration(
                  color: Colors.red,
                  shape: CircleBorder(
                    side: BorderSide(color: Colors.white),
                  ),
                ),
              ),
            ),
        ],
      ),
      onPressed: onTap,
    );
  }
}
