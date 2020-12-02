import 'package:flutter/material.dart';

import '../../../../constants.dart';

class MyAppBar extends StatelessWidget {
  var popUpValue = 'تتبع الطلب';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: EdgeInsets.only(top: 15),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          PopupMenuButton(
            icon: Icon(
              Icons.more_vert,
              size: 30,
              color: kMiddleColor,
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 2,
            itemBuilder: (BuildContext context) => [
              PopupMenuItem(
                child: Text(
                  'تتبع الطلب',
                  style: TextStyle(color: kRightColor),
                ),
                value: popUpValue,
              ),
            ],
            onSelected: (value) => print(value),
          ),
          Padding(
            padding: EdgeInsets.only(top: 40),
            child: Column(
              children: <Widget>[
                Text(
                  'تصميم تطبيق الكتروني',
                  style: TextStyle(
                      color: kMiddleColor.withOpacity(0.7),
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  'العميل ساره',
                  style: TextStyle(color: kDarkGrey, fontSize: 15),
                ),
              ],
            ),
          ),
          IconButton(
              icon: Icon(
                Icons.close,
                color: kMiddleColor,
                size: 30,
              ),
              onPressed: () => Navigator.pop(context)),
        ],
      ),
    );
  }
}
