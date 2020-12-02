import 'package:changehorizonsfreelancer/helpers/screen_helper.dart';
import 'package:changehorizonsfreelancer/ui/widgets/custom_scaffold.dart';
import 'package:changehorizonsfreelancer/ui/widgets/icon_button_with_title.dart';
import 'package:changehorizonsfreelancer/ui/widgets/save_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StartLevel extends StatefulWidget {
  @override
  _StartLevelState createState() => _StartLevelState();
}

class _StartLevelState extends State<StartLevel> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: "مراحل تنفيذ الطلب",
      onBack: (){},
      child: Column(
        children: <Widget>[
          _BuildIcone(),
          SizedBox(
            height: 30.0,
          ),
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
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: <Widget>[
                     SizedBox(
                       height: 15.0,
                     ),
                     RowContainer(
                         text: 'اسم الطلب',
                         subText: ' تصميم تطبيق الكتروني',
                         factor: 55.0),
                     RowContainer(
                         text: 'الحالة',
                         subText: '             تم قبول العرض ',
                         factor: 38.0),
                     RowContainer(text: 'تاريخ القبول', subText: 'YYYY-MM-DD', factor: 63.0),
                     RowContainer(
                         text: 'تاريخ التسليم', subText: 'YYYY-MM-DD', factor: 50.0),
                     RowContainer(
                         text: 'السعر',
                         subText: '500',
                         factor: 38.0),

                   ],
                 ),
            ),
          SizedBox(
            height: 15.0,
          ),
          SaveButton(
            width: 120,
            onPressed: () {//
              // showMaterialRefuseDialog();
            },
          //  color: Colors.blue,
            title: 'بدء التنفيذ',
          ),
          SizedBox(
            height: 300.0,
          ),
          _ButtonBar(),

        ],
      ),
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
class RowContainer extends StatelessWidget {
  final String text;
  final String subText;
  final double factor;
  RowContainer(
      {@required this.text, @required this.subText, @required this.factor});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Text(
              text,
              style: Theme.of(context).textTheme.headline.copyWith(
                fontSize: 15,
                fontFamily: 'Tajawal',
                color: Colors.grey.shade600,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: ScreenHelper.screenWidth(context, factor),
            ),
            Text(subText,
                style: Theme.of(context).textTheme.headline.copyWith(
                  fontSize: 15,
                  fontFamily: 'Tajawal',
                  color: Colors.grey.shade500,
                  fontWeight: FontWeight.bold,
                )),
          ],
        ),
        SizedBox(
          height: ScreenHelper.screenHeight(context, 10.0),
        ),
      ],
    );
  }
}

Widget _BuildIcone(){
  return Material(
    child: Row(
//      mainAxisAlignment: MainAxisAlignment.center,
//      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 8.0,
        ),
        Expanded(
          child: IconButtonWithTitle(
            //  onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>MyWallet())),
            title: 'مرحلة البدء',
            iconData: Icons.looks_one,
          ),
        ),
        Expanded(
          child: IconButtonWithTitle(
            //  onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>MyWallet())),
            title: 'مرحلة التنفيذ',
            iconData: Icons.looks_two,
          ),
        ),
        Expanded(
          child: IconButtonWithTitle(
            //  onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>MyWallet())),
            title: 'مرحلة الاستلام',
            iconData: Icons.looks_3,
          ),
        ),
        SizedBox(
          height: 8.0,
        ),


      ],
    ),
  );
}