import 'package:changehorizonsfreelancer/helpers/screen_helper.dart';
import 'package:changehorizonsfreelancer/ui/widgets/check_item.dart';
import 'package:changehorizonsfreelancer/ui/widgets/save_button.dart';
import 'package:changehorizonsfreelancer/ui/widgets/skip_button.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';

class RefuseAlert extends StatefulWidget {
  @override
  _RefuseAlertState createState() => _RefuseAlertState();
}

class _RefuseAlertState extends State<RefuseAlert> {
  @override
  Widget build(BuildContext context) {
    showMaterialConfirmRefuseDialog() {
      showDialog(context: context, builder: (_) => ConfrimTheRefuse());
    }

    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0))),
      title: Column(
        children: <Widget>[
          Padding(
            padding:
            EdgeInsets.only(right: ScreenHelper.screenWidth(context, 30)),
            child: Text(
                'هل أنت متأكد من رفض الطلب؟',
                style: Theme.of(context).textTheme.headline5.copyWith(
                  fontSize: 14,
                  color: Colors.blue,
                )),
          ),
          SizedBox(
            height: ScreenHelper.screenHeight(context, 7.0),
          ),
          Text(
              'يرجي اختيار أحد الأسباب للرفض او كتابة سبب',
              style: Theme.of(context).textTheme.headline5.copyWith(
                fontSize: 11,
                color: Colors.pink.shade300,
              )),
          SizedBox(
            height: ScreenHelper.screenHeight(context, 7.0),
          ),
        ],
      ),
      content: Wrap(children: [
        Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CheckItem(
                title: 'لست فارغ',
                backgroundColor: Colors.white30,
                checkValue: false,
              ),
              CheckItem(
                checkValue:  false,
                backgroundColor: Colors.white30,
                title: 'المهارات لا تناسب مهاراتي',
              ),
              CheckItem(
                checkValue: false,
                title: 'أسباب اخري',
                backgroundColor: Colors.white30,
              ),
            ],
          ),
        ),
        TextField(
          style:
          TextStyle(fontSize: 11, color: Colors.grey, fontFamily: 'Tajawal'),
          textAlign: TextAlign.end,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(
              top: ScreenHelper.screenHeight(context, 0),
              right: ScreenHelper.screenWidth(context, 2),
            ),
            hintText: 'اكتب السبب هنا',
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
      ],),
      actions: <Widget>[
        Wrap(
          children: [
            Expanded(
              flex: 1,
              child: SkipButton(
                width: 110,
                onPressed: () {
                  Navigator.pop(context);
                },
                color: Colors.pink.shade200,
                title: 'لست متأكد',
              ),
            ),
            SizedBox(width: 5,),
            Expanded(
              flex: 1,
              child: SaveButton(
                width: 110,
                onPressed: () {
                  showMaterialConfirmRefuseDialog();
                },
                backgroundColor: Colors.pink.shade200,
                title: 'نعم متأكد',
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class ConfrimTheRefuse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0))),
      title: Column(
        children: <Widget>[
          Icon(
            Icons.check_circle,
            color: kRightColor,
            size: 80,
          ),
          SizedBox(
            height: ScreenHelper.screenWidth(context, 15.0),
          ),
        ],
      ),
      contentPadding: EdgeInsets.only(
        left: ScreenHelper.screenWidth(context, 35),
        bottom: ScreenHelper.screenWidth(context, 15.0),
      ),
      content: Text(
          'تم رفض الطلب',
          style: Theme.of(context).textTheme.headline5.copyWith(
            fontSize: 30,
            color: Colors.grey,
          )
      ),
    );
  }
}
