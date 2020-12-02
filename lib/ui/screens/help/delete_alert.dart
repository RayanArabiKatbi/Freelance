
import 'package:changehorizonsfreelancer/helpers/screen_helper.dart';
import 'package:changehorizonsfreelancer/ui/widgets/custom_scaffold.dart';
import 'package:changehorizonsfreelancer/ui/widgets/header_tile_row.dart';
import 'package:changehorizonsfreelancer/ui/widgets/save_button.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class Delete_alert extends StatefulWidget {
  @override
  _Delete_alertState createState() => _Delete_alertState();
}

class _Delete_alertState extends State<Delete_alert> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15.0))),
            title: Icon(Icons.error_outline, color: Colors.pinkAccent, size: 60),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  'سيؤدي حذف حسابك إلي إزالة حميع معلوماتك من قاعدة بياناتنا. هذا لا يمكن التراجع عنه .',
                  textDirection: TextDirection.rtl,
                  style: Theme.of(context)
                      .textTheme
                      .headline
                      .copyWith(color: Colors.grey, fontSize: 13),
                ),
                SizedBox(
                  height: ScreenHelper.screenHeight(context, 10.0),
                ),
                Text(
                  'أدخل كلمة المرور للمتابعة',
                  style: Theme.of(context)
                      .textTheme
                      .headline
                      .copyWith(color: Colors.grey.shade700, fontSize: 10),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: SaveButton(
                        onPressed: (){},
                        title: 'حذف الحساب',
                        backgroundColor: Colors.pink.shade300,
                      ),
                    ),
                    SizedBox(
                      width: kMainPadding,
                    ),
                    Expanded(
                      child: TextField(
                        style:
                        TextStyle(fontSize: 11, color: Colors.grey, fontFamily: 'Tajawal'),
                        textAlign: TextAlign.end,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(
                            top: ScreenHelper.screenHeight(context, 0),
                            right: ScreenHelper.screenWidth(context, 2),
                          ),
                          hintText: 'كلمة المرور',
                          hintStyle: Theme.of(context).textTheme.headline5.copyWith(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.pink.shade200, width: 1.5),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.pink.shade200, width: 1.5),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                        ),
                      ),
                    ),



                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//
//class DeleteAlert extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      home: Scaffold(
//        body: Center(
//          child: AlertDialog(
//            shape: RoundedRectangleBorder(
//                borderRadius: BorderRadius.all(Radius.circular(15.0))),
//            title: Icon(Icons.error_outline, color: Colors.grey, size: 60),
//            content: Column(
//              mainAxisSize: MainAxisSize.min,
//              crossAxisAlignment: CrossAxisAlignment.end,
//              children: <Widget>[
//                Text(
//                  'سيؤدي حذف حسابك إلي إزالة حميع معلوماتك من قاعدة بياناتنا. هذا لا يمكن التراجع عنه .',
//                  textDirection: TextDirection.rtl,
//                  style: Theme.of(context)
//                      .textTheme
//                      .headline
//                      .copyWith(color: Colors.grey, fontSize: 13),
//                ),
//                SizedBox(
//                  height: ScreenHelper.screenHeight(context, 10.0),
//                ),
//                Text(
//                  'أدخل كلمة المرور للمتابعة',
//                  style: Theme.of(context)
//                      .textTheme
//                      .headline
//                      .copyWith(color: Colors.grey.shade700, fontSize: 10),
//                ),
//                Row(
//                  crossAxisAlignment: CrossAxisAlignment.center,
//                  children: <Widget>[
//                    SaveButton(
//                      onPressed: (){},
//                      title: 'حذف الحساب',
//                      backgroundColor: Colors.pink.shade300,
//                    ),
//                  ],
//                )
//              ],
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//}