import 'package:changehorizonsfreelancer/helpers/screen_helper.dart';
import 'package:changehorizonsfreelancer/ui/widgets/custom_scaffold.dart';
import 'package:changehorizonsfreelancer/ui/widgets/save_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../constants.dart';

class ReSendCode extends StatefulWidget {
  @override
  _ReSendCodeState createState() => _ReSendCodeState();
}

class _ReSendCodeState extends State<ReSendCode> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: 'تعديل رقم الهاتف ',
      onBack: (){},
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            SizedBox(
              height: 20,
              width: 20,
            ),
            TextField(
          style:
          TextStyle(fontSize: 11, color: Colors.grey, fontFamily: 'Tajawal'),
    textAlign: TextAlign.end,
    decoration: InputDecoration(
    contentPadding: EdgeInsets.only(
    top: ScreenHelper.screenHeight(context, 5),
    right: ScreenHelper.screenWidth(context, 2),
    ),

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
            SizedBox(
              height: 20,
            ),
            Text(' أدخل رمز التحقق الذي تلقيته عبر رسالة نصية.إذا لم تتلق رمز التحقق يرجى تجربة مايلي'),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text('إعادة إرسال الرمز'),
                    SizedBox(
                      width: 30,
                    ),
                    Text('اتصل بي'),
                  ],
                ),
              ),
            ),
        SizedBox(
        height: 20,
        ),
            Row(
              children: [
                Expanded(
                  child: SaveButton(
                    width: double.maxFinite,
                    title: 'التالي',
                    onPressed: () {},
                  ),
                ),
              ],
            ),
      _ButtonBar(),

          ],
        ),
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