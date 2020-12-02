  
import 'package:changehorizonsfreelancer/helpers/screen_helper.dart';
import 'package:changehorizonsfreelancer/ui/widgets/save_button.dart';
import 'package:changehorizonsfreelancer/ui/widgets/skip_button.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class AcceptAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0))),
      title: Icon(
        Icons.sentiment_very_satisfied,
        color: kRightColor,
        size: 40,
      ),
      content: Text('تم إرسال الموافقة إلي العميل',
          textDirection: TextDirection.rtl,
          style: Theme.of(context).textTheme.headline5.copyWith(
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
            title: 'العودة إلي الصفحة السابقة',
            textStyle: TextStyle(fontSize: 8),
            width: 110,
            color: Colors.pink.shade200,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        Flexible(
          flex: 1,
          child: SaveButton(
            title: ' الانتقال لصفحة المراسلة',
            textStyle: TextStyle(fontSize: 8),
            width: 110,
            backgroundColor: Colors.pink.shade200,
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
