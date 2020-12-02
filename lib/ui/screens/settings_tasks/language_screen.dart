import 'package:changehorizonsfreelancer/ui/widgets/custom_scaffold.dart';
import 'package:changehorizonsfreelancer/ui/widgets/header_tile.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class LanguageScreen extends StatefulWidget {
  @override
  _LanguageScreenState createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: 'الاعدادات',
      onBack: () {},
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 20.0,
          ),
          HeaderTile(
            title: "اختيار اللغة",
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.circle,
                  color: kDarkGrey,
                  size: 25,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text("عربي"),
              ],
            ),
          ),

        ],
      ) ,

    );
  }
}
