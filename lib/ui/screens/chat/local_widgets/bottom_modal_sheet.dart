import 'package:changehorizonsfreelancer/ui/widgets/outlined_textfield.dart';
import 'package:changehorizonsfreelancer/ui/widgets/save_button.dart';
import 'package:changehorizonsfreelancer/ui/widgets/skip_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../../../constants.dart';

class BottomModalSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      enableDrag: true,
      builder: (context) => Container(
          padding: EdgeInsets.all(35),
          width: double.infinity,
          height: 465,
          child: ListView(
            children: <Widget>[
              Text(
                'عرض الخدمه',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kRightColor,
                  fontSize: 12,
                ),
              ),
              Text(
                'تصميم تطبيق الكتروني',
                textAlign: TextAlign.center,
                style: TextStyle(color: kMiddleColor),
              ),
              SizedBox(
                height: 20,
              ),
              OutlinedTextField(
                controller: null,
                customLabel: 'سعر الخدمه',
              ),
              SizedBox(
                height: 20,
              ),
              OutlinedTextField(
                controller: null,
                customLabel: 'وصف الخدمه',
              ),
              SizedBox(
                height: 20,
              ),
              OutlinedTextField(
                controller: null,
                customLabel: 'تاريخ التسليم',
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: SkipButton(
                      title: 'الغاء',
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      color: kMiddleColor,
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Expanded(
                    child: SaveButton(
                      title: 'ارسال',
                      onPressed: () {},
                      backgroundColor: kMiddleColor,
                    ),
                  ),
                ],
              ),
            ],
          )),
      onClosing: () {},
    );
  }
}
