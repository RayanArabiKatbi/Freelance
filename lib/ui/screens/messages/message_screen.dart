

import 'package:changehorizonsfreelancer/constants.dart';
import 'package:changehorizonsfreelancer/constants.dart';
import 'package:changehorizonsfreelancer/helpers/screen_helper.dart';
import 'package:changehorizonsfreelancer/ui/screens/HandOver/handOver_screen.dart';

import 'package:changehorizonsfreelancer/ui/widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:changehorizonsfreelancer/ui/widgets/custom_scaffold.dart';
import 'package:changehorizonsfreelancer/helpers/screen_helper.dart';
import '../../../constants.dart';

import 'package:changehorizonsfreelancer/ui/widgets/save_button.dart';
import 'package:changehorizonsfreelancer/ui/widgets/skip_button.dart';
import 'package:changehorizonsfreelancer/helpers/screen_helper.dart';
import '../../../constants.dart';
import '../../../constants.dart';
import '../../../constants.dart';

class MessageScreen extends StatefulWidget {
  @override
  _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: "الرسائل",
      onBack: () {},
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 100.0,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: ScreenHelper.screenHeight(context, 10.0),
              horizontal: ScreenHelper.screenWidth(context, 15.0),
            ),
             width: ScreenHelper.screenWidth(context, 320.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                   color: Colors.blue[50]),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 50.0,
                ),
                Text('لست مسجلا بعد',
              style: Theme.of(context).textTheme.headline.copyWith(
                fontSize: 20,
                fontFamily: 'Tajawal',
                color: Colors.grey.shade600,
                fontWeight: FontWeight.bold,
              )
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text('لمراسلة أحد الأعضاء عليك تسجيل الدخول أولا',
                    style: Theme.of(context).textTheme.headline.copyWith(
                      fontSize: 15,
                      fontFamily: 'Tajawal',
                      color: Colors.grey.shade600,
                    )
                ),
                SizedBox(
                  height: 70.0,
                ),
                Flexible(
                  flex: 1,
                 child: SaveButton(
                  title: ' الانتقال لصفحة التسجيل',
                  textStyle: TextStyle(fontSize: 15),
                  width: 220,
                  backgroundColor: Colors.deepPurpleAccent[100],
                  onPressed: () {},
                ),
                ),



              ],
            ),
    ),
          SizedBox(
            height: 310.0,
          ),
        _ButtonBar(),
        ],



      )
      );


  }
}

Widget _sectionText({@required String title,@required String subtitle}) {
  return Container(
    child: Center(
      child: Column(
          children: <Widget>[
         Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 80),
           decoration: ShapeDecoration(
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(
                 8.0,
               ),
             ),
             color: Colors.grey,
           ),
             child: Text(
                title,
                 textScaleFactor: 3.0,
               ),
  ),

            Row(
              children: <Widget>[
                Expanded(
                  child: SaveButton(
                    width: double.maxFinite,
                    title: 'الانتقال لصفحة التسجيل',
                    onPressed: () {},
                  ),
                )
              ],
            )
   ]
  ),
    )
  );
}
Widget _ButtonBar(){
  return Container(
    child: Row(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Divider(
          height: 1,
          thickness: 3,
        ),
        Expanded(
          child:  Icon(Icons.home, color: Colors.grey, size: 40),
        ),
        Expanded(
          child:  Icon(Icons.message, color: Colors.grey, size: 40),
        ),
        Expanded(
          child:  Icon(Icons.person, color: Colors.grey, size: 40),
        ),
        Expanded(
          child:  Icon(Icons.settings, color: Colors.grey, size: 40),
        ),

      ],

    ),
  );
}