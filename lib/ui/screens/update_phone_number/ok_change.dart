import 'package:changehorizonsfreelancer/helpers/screen_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../constants.dart';

class OkChange extends StatefulWidget {
  @override
  _OkChangeState createState() => _OkChangeState();
}

class _OkChangeState extends State<OkChange> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0))),
      title: Icon(
        Icons.check_circle,
        color: kRightColor,
        size: 40,
      ),
      content: Text('تم التغيير',
          textAlign: TextAlign.center,
          textDirection: TextDirection.rtl,
          style: Theme.of(context).textTheme.headline5.copyWith(
            fontSize: 16,
            color: Colors.pinkAccent,
          )),
//      contentPadding: EdgeInsets.symmetric(
//          vertical: ScreenHelper.screenHeight(context, 15),
//          horizontal: ScreenHelper.screenWidth(context, 25)),

    );
  }
}
