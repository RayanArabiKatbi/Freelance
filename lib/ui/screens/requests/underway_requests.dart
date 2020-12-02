 
import 'package:changehorizonsfreelancer/helpers/screen_helper.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class UnderwayRequests extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ContainerRequests(),
        ContainerRequests(),
        ContainerRequests(),
        ContainerRequests(),
        ContainerRequests(),
      ],
    );
  }
}

class ContainerRequests extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
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
              RowContainer(
                  text: 'اسم الطلب',
                  subText: ' تصميم تطبيق الكتروني',
                  factor: 55.0),
              RowContainer(
                  text: 'تفاصيل الطلب',
                  subText: ' تصميم تطبيق الكتروني',
                  factor: 38.0),
              RowContainer(
                  text: 'مرحلة الطلب', subText: 'مرحله التنفيذ', factor: 52.0),
//              RowContainer(
//                  text: 'تاريخ التسليم', subText: 'YYYY-MM-DD', factor: 47.0 ,
//              ),
              Row(
                children: <Widget>[
                  Text(
                    'تاريخ التسليم',
                    style: Theme.of(context).textTheme.headline.copyWith(
                          fontSize: 15,
                          fontFamily: 'Tajawal',
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  SizedBox(
                    width: ScreenHelper.screenWidth(context, 40.0),
                  ),
                  Text('YYYY-MM-DD',
                      style: Theme.of(context).textTheme.headline.copyWith(
                            fontSize: 15,
                            fontFamily: 'Tajawal',
                            color: Colors.grey.shade500,
                            fontWeight: FontWeight.bold,
                          )),
                  SizedBox(
                    width: ScreenHelper.screenWidth(context, 30.0),
                  ),
                  CircleAvatar(
                      backgroundColor: Colors.white,
                      foregroundColor: kMiddleColor,
                      child: Icon(Icons.create)),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: ScreenHelper.screenHeight(context, 20.0),
        ),
      ],
    );
  }
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
