import 'package:changehorizonsfreelancer/ui/widgets/custom_scaffold.dart';
import 'package:changehorizonsfreelancer/ui/widgets/icon_button_with_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:changehorizonsfreelancer/ui/widgets/custom_scaffold.dart';
import 'package:changehorizonsfreelancer/helpers/screen_helper.dart';
import '../../../constants.dart';

class Notification_Screen extends StatefulWidget {
  @override
  _Notification_ScreenState createState() => _Notification_ScreenState();
}

class _Notification_ScreenState extends State<Notification_Screen> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: "الاشعارات",
      onBack: () {},
     // scrolls: false,
      child: Container(
          padding:
          EdgeInsets.all(ScreenHelper.screenWidth(context, 10.0)),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: ScreenHelper.screenHeight(context, 20),
              ),
              _infoBox(
                  icon: Icons.add_alert,
                  title: "لقد وصلك طلب لتقديم خدمة تصميم تطبيق الكتروني",
                  subtitle: ""),
              _infoBox(
                  icon: Icons.add_alert,
                  title: "بقي يومان لتسليم مشروع تصميم تطبيق الكتروني",
                  subtitle: ""),
              _infoBox(
                  icon: Icons.add_alert,
                  title: "يرجى إضافة رقم الموبايل الخاص بك في بروفايلك",
                  subtitle: ""),
              _infoBox(
                  icon: Icons.add_alert,
                  title: "يرجى إضافة رقم الموبايل الخاص بك في بروفايلك",
                  subtitle: ""),
              _infoBox(
                  icon: Icons.add_alert,
                  title: "يرجى إضافة رقم الموبايل الخاص بك في بروفايلك",
                  subtitle: ""),
              SizedBox(
                height: 40.0,
              ),
              _ButtonBar(),
            ],
          ),
      )
     //  ]);
    );

  }


  Widget _infoBox({@required String title,
    @required String subtitle,
    @required IconData icon}) {
    return Container(
        margin:
        EdgeInsets.symmetric(vertical: ScreenHelper.screenWidth(context, 5)),
        padding: EdgeInsets.all(ScreenHelper.screenWidth(context, 30)),
        decoration: ShapeDecoration(
          color: kLightPinkBackground,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              15.0,
            ),
          ),
        ),
        child: Column(children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Icon(
                icon,
                color: kMiddleColor,
                size: 12,
              ),
              SizedBox(
                width: ScreenHelper.screenWidth(context, 5),
              ),
              Text(title,
                  style: Theme
                      .of(context)
                      .textTheme
                      .headline5
                      .copyWith(color: kMiddleColor)),
            ],
          ),
          SizedBox(
            height: ScreenHelper.screenWidth(context, 5),
          ),
          Row(
            children: <Widget>[
              Text(subtitle, style: Theme
                  .of(context)
                  .textTheme
                  .caption)
            ],
          ),
          Divider(
            height: 1,
            thickness: 4,
          ),
          ],
          )
    );
  }
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