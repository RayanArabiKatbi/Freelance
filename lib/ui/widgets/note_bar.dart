import 'package:changehorizonsfreelancer/constants.dart';
import 'package:changehorizonsfreelancer/helpers/screen_helper.dart';
import 'package:changehorizonsfreelancer/ui/widgets/skip_button.dart';
import 'package:flutter/material.dart';

//sevices
class NoteBar extends StatelessWidget {
  final Function onPressed;
  final String message;

  const NoteBar({this.onPressed, this.message});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Icon(
                Icons.error_outline,
                color: Colors.red,
              ),
              SizedBox(
                width: ScreenHelper.screenWidth(context, 4),
              ),
              Expanded(
                child: Text(
                  message,
                  softWrap: true,
                  style: TextStyle(color: kDarkGrey),
                ),
              ),
            ],
          ),
        ),
        SkipButton(
          onPressed: onPressed,
          color: Colors.red,
          title: 'تعديل الموعد',
        ),
      ],
    );
  }
}
