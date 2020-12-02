import 'package:changehorizonsfreelancer/helpers/screen_helper.dart';
import 'package:changehorizonsfreelancer/ui/widgets/custom_scaffold.dart';
import 'package:changehorizonsfreelancer/ui/widgets/header_tile.dart';
import 'package:changehorizonsfreelancer/ui/widgets/header_tile_row.dart';
import 'package:changehorizonsfreelancer/ui/screens/settings_tasks/missions_screen.dart';
import 'package:changehorizonsfreelancer/ui/widgets/save_button.dart';
import 'package:flutter/cupertino.dart';

import '../../../constants.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Language_Choose extends StatefulWidget {
  static const String routeName = '/languages';
  @override
  _Language_ChooseState createState() => _Language_ChooseState();
}

class _Language_ChooseState extends State<Language_Choose> {
//  TextEditingController _searchController;
//  final List<LanguageModel> _msgList = [
//  new LanguageModel(
//  image_url: 'assets/icons/contact.png',
//  country: 'السعودية ',
//  ),
//
//  new LanguageModel(
//  image_url: 'assets/icons/contact.png',
//  country: 'الأردن ',
//  ),
//  new LanguageModel(
//  image_url: 'assets/icons/contact.png',
//  country: 'الإمارات العربية المتحدة ',
//  ),
//  new LanguageModel(
//  image_url: 'assets/icons/contact.png',
//  country: 'البحرين ',
//  ),
//
//  new LanguageModel(
//  image_url: 'assets/icons/contact.png',
//  country: 'العراق ',
//  ),
//];
//  final bool _isSigned = true;
//  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: 'الاعدادات',
      onBack: () {},
      child: Column(
        children: <Widget>[
          SizedBox(
            height: ScreenHelper.screenHeight(context, 10.0),
          ),
          HeaderTile(
            title: 'اختيار اللغة',
            children:[


            ],
          ),
          _selectCity(),

        ],
      ),

    );
  }

  Widget _selectCity() {

  }

//        title: 'الإعدادات',
//        onBack: () => {print('languages')
//  },
//    child: _isSigned ? _buildSigned() : _buildNotSigned(),
//    scrolls : false,
//    );

//  Widget _buildNotSigned() {
//    return LayoutBuilder(builder: (context, constraints) {
//      final height = constraints.biggest.height;
//      return SingleChildScrollView(
//        child: Container(
//          padding: EdgeInsets.all(kMainPadding),
//          alignment: Alignment.center,
//          height: height,
//          child: Container(
//            padding: EdgeInsets.all(kMainPadding) +
//                EdgeInsets.only(
//                  top: kMainPadding,
//                ),
//            decoration: BoxDecoration(
//              color: kLightGrey,
//              borderRadius: BorderRadius.all(Radius.circular(
//                  8.0) //                 <--- border radius here
//              ),
//            ),
//            child: Column(
//              mainAxisSize: MainAxisSize.min,
//              children: <Widget>[
//                Text(
//                  "لستَ مسجلاً بعد",
//                  style: Theme.of(context).textTheme.headline3,
//                ),
//                SizedBox(
//                  height: 8.0,
//                ),
//                Text(
//                  "لمراسلة أحد الأعضاء عليك تسجيل الدخول أولا",
//                  style: Theme.of(context).textTheme.headline5,
//                ),
//                SizedBox(
//                  height: kMainPadding * 2,
//                ),
//                SaveButton(
//                  title: "الإنتقال لصفحة التسجيل",
//                  onPressed: () {},
//                ),
//              ],
//            ),
//          ),
//        ),
//      );
//    });
//  }
//  Widget _buildSigned() {
//    return Stack(
//
//    );
//}
//}
//      child: Column(
//          children: <Widget>[
//            SizedBox(
//              height: ScreenHelper.screenHeight(context, 20.0),
//            ),
//            HeaderTile (
//              title: "اختيار اللغة",
//              children: [
//                HeaderTileRow (
//                  title: "عربي",
//                  //iconData: Icons.a,
//                ),
//                HeaderTileRow(
//                  title: 'English',
//                  external: true,
//             //       iconData: Icons.,
//                )
//              ],
//            ),
//            SizedBox(
//              height: ScreenHelper.screenHeight(context, 10.0),
//            ),
//            HeaderTile(
//              title: ' اختيار البلد',
//
//
//            )
//          ],
//        ),
//
//      );
//
//  }
//
//class LanguageModel {
//  final String country;
//  final String image_url;
//  LanguageModel({this.image_url, this.country});
//}
//
}