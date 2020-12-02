import 'package:changehorizonsfreelancer/helpers/screen_helper.dart';
import 'package:changehorizonsfreelancer/ui/widgets/save_button.dart';
import 'package:changehorizonsfreelancer/ui/widgets/skip_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../constants.dart';

class ConfirmAlert extends StatefulWidget {
  @override
  _ConfirmAlertState createState() => _ConfirmAlertState();
}

class _ConfirmAlertState extends State<ConfirmAlert> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0))),
      title: Text('************'
      ),
      content: Text('سيتم ارسال رمز التحقق إلى هذا الرقم عبر الرسالة',
          textDirection: TextDirection.rtl,
          style: Theme
              .of(context)
              .textTheme
              .headline5
              .copyWith(
            fontSize: 16,
            color: Colors.grey,
          )),
      contentPadding: EdgeInsets.symmetric(
          vertical: ScreenHelper.screenHeight(context, 15),
          horizontal: ScreenHelper.screenWidth(context, 25)),
      actions: <Widget>[
        Flexible(
          flex: 1,
          child: SkipButton(
            title: 'الغاء',
            textStyle: TextStyle(fontSize: 8),
            width: 110,
            onPressed: () {},
          ),
        ),
        Flexible(
          flex: 1,
          child: SaveButton(
            title: 'تأكيد',
            textStyle: TextStyle(fontSize: 8),
            width: 110,

            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),

      ],


    );
  }
}