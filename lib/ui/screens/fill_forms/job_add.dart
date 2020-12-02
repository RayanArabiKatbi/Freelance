

import 'package:changehorizonsfreelancer/constants.dart';
import 'package:changehorizonsfreelancer/helpers/screen_helper.dart';
import 'package:changehorizonsfreelancer/ui/screens/HandOver/handOver_screen.dart';
import 'package:changehorizonsfreelancer/ui/screens/signup_screen/signup2_screen.dart';
import 'package:changehorizonsfreelancer/ui/widgets/custom_radio_tile.dart';
import 'package:changehorizonsfreelancer/ui/widgets/custom_scaffold.dart';
import 'package:changehorizonsfreelancer/ui/widgets/outlined_textfield.dart';
import 'package:changehorizonsfreelancer/ui/widgets/save_button.dart';
import 'package:changehorizonsfreelancer/ui/widgets/skip_button.dart';
import 'package:changehorizonsfreelancer/ui/widgets/text_with_link.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class JobAdd extends StatefulWidget {
  @override
  _JobAddState createState() => _JobAddState();
}

class _JobAddState extends State<JobAdd> {
  int _selectedRadio = 0;
  TextEditingController _addTitleController = TextEditingController();
  TextEditingController _addDiscribtion = TextEditingController();
  TextEditingController _urlJobController = TextEditingController();
  TextEditingController _historyController = TextEditingController();

  @override
  void dispose(){
    _addTitleController.dispose();
    _addDiscribtion.dispose();
    _urlJobController.dispose();
    _historyController.dispose();
    super.dispose();
  }

  Widget _buildRadio({int radioNumber, String title}) {
    return CustomRadioTile(
      title: title,
      value: radioNumber,
      selectedValue: _selectedRadio,
      onChange: (newValue) {
        setState(() {
          _selectedRadio = newValue;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: 'إضافة عمل',
      onBack: () {},
      child: Container(
        width: double.infinity,
        height: ScreenHelper.screenHeight(context, 800),
        padding: EdgeInsets.all(kMainPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            _buildTextFieldWithText(
                controller: _addTitleController, title: 'أضف عنوان مناسب'),
            _buildTextFieldWithText(
                controller: _addTitleController, title: 'أضف وصفا دقيقا ومختصرا للعمل',),
            _buildTextFieldWithText(
                controller: _addTitleController, title: 'رابط العمل'),
            _buildTextFieldWithText(
                controller: _addTitleController, title: 'تاريخ الانجاز'),
            _buildTextFieldWithText(
                controller: _addTitleController, title: 'حدد المهارات التي استخدمتها في هذا العمل'),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                Row(
                  children: <Widget>[
                    _buildRadio(title: 'هل تحتاج موافقة؟'),
                    SizedBox(
                      width: 30,
                    ),
                  ],
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(
                left: ScreenHelper.screenWidth(context, 90),
              ),
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(20.0)),
              width: ScreenHelper.screenWidth(context, 400),
              height: ScreenHelper.screenHeight(context, 100.0),
              child: Center(
                child: RowWithIcon(
                  ontap: null,
                  text: 'انقر لاضافة الصور والملفات يدويا',
                  textSize: 15.0,
                  textColor: kMiddleColor,
                  factor: 15.0,
                  iconData: Icons.cloud_upload,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(
              height: ScreenHelper.screenHeight(context, 15.0),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: SaveButton(
                    width: double.maxFinite,
                    title: 'إضافة',
                    onPressed: () {},
                  ),
                ),
//                SizedBox(
//                  width: kMainPadding,
//                ),
                SizedBox(
                  height: ScreenHelper.screenHeight(context, 15.0),
                ),
                Expanded(
                  child: SkipButton(
                    width: double.maxFinite,
                    title: 'تخطي',
                    onPressed: () {},
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget _buildTextFieldWithText(
    {TextEditingController controller,
      String title,
      bool last = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        title,
        // style: Theme.of(context).textTheme.headline5,
      ),
//      SizedBox(
//        height: 10,
//      ),
      OutlinedTextField(
        controller: controller,
        textInputAction: last ? TextInputAction.done : TextInputAction.next,
      ),
    ],
  );
}