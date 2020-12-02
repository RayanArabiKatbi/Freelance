
import 'package:changehorizonsfreelancer/ui/screens/help/about.dart';
import 'package:changehorizonsfreelancer/ui/screens/help/terms_conditions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:changehorizonsfreelancer/ui/widgets/custom_scaffold.dart';
import 'package:changehorizonsfreelancer/helpers/screen_helper.dart';
import '../../../constants.dart';
import 'contact_us.dart';

class Help extends StatefulWidget {
  @override
  _HelpState createState() => _HelpState();
}

class _HelpState extends State<Help> {
  bool isSwitched = true;
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      scrolls: false,
      title: "مساعدة",
      onBack: () {},
      child: Column(
        children: <Widget>[
          SizedBox(
            height: ScreenHelper.screenHeight(context, 25),
          ),
          InkWell(onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>About())),child: _listTile(title: "عن التطبيق")),
          InkWell(onTap:()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Terms())),child: _listTile(title: "الشروط والأحكام")),
          InkWell(onTap:()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ContactUs())),child: _listTile(title: "مركز المساعدة")),
          _listTile(title: "الإشعارات", trailing: false),
          _listTile(
              title: "مسح الحساب",
              divider: false,
              icon: false,
              color: kRightColor),
        ],
      ),
    );
  }

  Widget _listTile(
      {String title,
      bool divider = true,
      bool icon = true,
      bool trailing = true,
      Color color = Colors.black54}) {
    return Container(
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text(title,
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(color: color)),
            trailing: icon
                ? trailing
                    ? Icon(Icons.keyboard_arrow_left)
                    : Switch(
                        value: isSwitched,
                        activeColor: kMiddleColor,
                        onChanged: (bool value) {
                          setState(() {
                            isSwitched = value;
                            //value?value=false:value=true;
                          });
                          print(isSwitched);
                        },
                      )
                : null,
          ),
          if (divider != false)
            Divider(
              height: 1,
              thickness: 1,
            )
        ],
      ),
    );
  }
}
