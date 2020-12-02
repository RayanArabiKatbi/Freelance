import 'package:changehorizonsfreelancer/helpers/screen_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ServiceAlert extends StatefulWidget {
  @override
  _ServiceAlertState createState() => _ServiceAlertState();
}

class _ServiceAlertState extends State<ServiceAlert> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0))),
        contentPadding: EdgeInsets.symmetric(
            vertical: ScreenHelper.screenHeight(context, 15),
            horizontal: ScreenHelper.screenWidth(context, 25)),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(
              vertical: ScreenHelper.screenHeight(context, 10.0),
              horizontal: ScreenHelper.screenWidth(context, 15.0),
            ),
            width: ScreenHelper.screenWidth(context, 320.0),
            decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(10.0),
               color: Colors.lightBlue.shade50),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                   Text(
                     'محمد يرغب في عرض خدمة عليك',
                     style: Theme.of(context).textTheme.headline5.copyWith(
                         fontSize: 16,
                         color: Colors.pink,),),
                   SizedBox(
                     height: 8.0,
                   ),
                   Text('بعنوان:تصميم تطبيق الكتروني '),
                   SizedBox(
                     height: 8.0,
                   ),
                   Text(' سيبدأ تنفيذها من تاريخ الدفع حسب المدة المحددة وستكلفك 200 ريال '),
                   SizedBox(
                     height: 12.0,
                   ),
                   Text('بانتظار موافقة العميل...'),
                   SizedBox(
                     height: 15.0,
                   ),

              ],
    )
            ),





        ]

        );

  }
}
