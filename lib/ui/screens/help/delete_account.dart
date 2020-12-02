
import 'package:changehorizonsfreelancer/helpers/screen_helper.dart';
import 'package:changehorizonsfreelancer/ui/widgets/custom_scaffold.dart';
import 'package:changehorizonsfreelancer/ui/widgets/header_tile_row.dart';
import 'package:changehorizonsfreelancer/ui/widgets/save_button.dart';
import 'package:flutter/material.dart';

class DeleteAccount extends StatefulWidget {
  @override
  _DeleteAccountState createState() => _DeleteAccountState();
}

class _DeleteAccountState extends State<DeleteAccount> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        onBack: () {},
        scrolls: false,
        title: 'مساعدة',
        child: Column(
          children: <Widget>[
            SizedBox(
              height: ScreenHelper.screenHeight(context, 30.0),
            ),
            HeaderTileRow(
              title: 'عن التطبيق',
              iconTint: Colors.grey,
            ),
            Divider(thickness: 1),
            HeaderTileRow(
              title: 'الشروط والأحكام',
              iconTint: Colors.grey,
            ),
            Divider(thickness: 1),
            HeaderTileRow(
              title: 'مركز المساعدة',
              external: true,
            ),
            Divider(thickness: 1),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: ScreenHelper.screenWidth(context, 15.0)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'الاشعارات',
                    textDirection: TextDirection.rtl,
                    style: Theme.of(context).textTheme.headline.copyWith(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    width: ScreenHelper.screenWidth(context, 220.0),
                  ),
                  Switch(
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                        print(isSwitched);
                      });
                    },
                    activeTrackColor: Colors.blue.shade200,
                    activeColor: Colors.white,
                  ),
                ],
              ),
            ),
            Divider(thickness: 1),
          ],
        ));
  }
}

/*
 this is delete alert that happens when the client wants to delete his account
 I'll leave it that way until I know what button to show
 also , the textField doesn't show💔
 */

class DeleteAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15.0))),
            title: Icon(Icons.error_outline, color: Colors.grey, size: 60),
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
                    SaveButton(
                      onPressed: (){},
                      title: 'حذف الحساب',
                      backgroundColor: Colors.pink.shade300,
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
