

import 'package:changehorizonsfreelancer/helpers/screen_helper.dart';
import 'package:changehorizonsfreelancer/ui/screens/services/review_service/freelancer_review.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class HandOver extends StatelessWidget {
//  void getFilePath() async {
//    try {
//      String filePath = await FilePicker.getFilePath(type: FileType.any);
//      if (filePath == '') {
//        return;
//      }
//      print("File path: " + filePath);
//    } catch (e) {
//      print(e);
//    }
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  left: ScreenHelper.screenWidth(context, 120),
                  top: ScreenHelper.screenWidth(context, 60),
                ),
                child: RowWithIcon(
                  ontap: () {},
                  text: 'تسليم العمل',
                  textColor: kMiddleColor,
                  textSize: 25.0,
                  factor: 50,
                  iconData: Icons.close,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: ScreenHelper.screenHeight(context, 40.0),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: ScreenHelper.screenWidth(context, 90),
                ),
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(10.0)),
                width: ScreenHelper.screenWidth(context, 320),
                height: ScreenHelper.screenHeight(context, 35.0),
                child: Center(
                  child: RowWithIcon(
                    ontap: null,
                    text: 'رفع الملفات للعميل',
                    textSize: 20.0,
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    'انواع الملفات المسموحة',
                    textAlign: TextAlign.end,
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        .copyWith(fontSize: 12, color: Colors.grey),
                  ),
                  SizedBox(
                    height: ScreenHelper.screenHeight(context, 5.0),
                  ),
                  Text(
                    '(GIF,JPG,JPEG,PNG), المستندات (DOCX,PDF) , ملفات مضغوطة (ZIP,RAR) ',
                    textAlign: TextAlign.end,
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        .copyWith(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(
                height: ScreenHelper.screenHeight(context, 20.0),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: ScreenHelper.screenWidth(context, 20),
                  right: ScreenHelper.screenWidth(context, 20),
                ),
                child: TextField(
                    textAlign: TextAlign.end,
                    decoration: InputDecoration(
                      hintText: 'مشاركة رابط',
                      hintStyle: Theme.of(context)
                          .textTheme
                          .headline5
                          .copyWith(fontSize: 17, color: Colors.grey.shade400),
                      suffixIcon: Icon(Icons.insert_link),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 13.0,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: kMiddleColor, width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                    )),
              ),
              SizedBox(
                height: ScreenHelper.screenHeight(context, 20.0),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: ScreenHelper.screenWidth(context, 20),
                  right: ScreenHelper.screenWidth(context, 20),
                ),
                child: TextField(
                    textAlign: TextAlign.end,
                    maxLength: 200,
                    maxLines: 10,
                    decoration: InputDecoration(
                      hintStyle: Theme.of(context)
                          .textTheme
                          .headline5
                          .copyWith(fontSize: 15, color: Colors.grey.shade400),
                      hintText: 'ملاحظات اضافية للعميل',
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: kMiddleColor, width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                    )),
              ),
              SizedBox(
                height: ScreenHelper.screenHeight(context, 15.0),
              ),
              Container(
                padding:
                    EdgeInsets.only(left: ScreenHelper.screenWidth(context, 15)),
                decoration: BoxDecoration(
                    color: kMiddleColor,
                    borderRadius: BorderRadius.circular(10.0)),
                width: ScreenHelper.screenWidth(context, 310),
                height: ScreenHelper.screenHeight(context, 35.0),
                child: FlatButton(
                  onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>FreelancerReview())),
                  child: Text(
                    'تسليم',
                    style:
                        Theme.of(context).textTheme.headline6.copyWith(fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: ScreenHelper.screenHeight(context, 100.0),
              ),
              Divider(
                    height: 1,
                    thickness: 3,
                  ),
              Row(
                children: [

                    ],
                  )



            ],
          ),
        ),
      );
  }
}

class RowWithIcon extends StatelessWidget {
  final String text;
  final Color textColor;
  final IconData iconData;
  final double textSize;
  final double factor;
  final FontWeight fontWeight;
  final Function ontap;
  RowWithIcon(
      {@required this.text,
      @required this.iconData,
      @required this.textSize,
      @required this.fontWeight,
      @required this.textColor,
      @required this.ontap,
      this.factor});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          text,
          style: Theme.of(context).textTheme.headline5.copyWith(
              color: textColor,
              fontSize: textSize,
              fontWeight: fontWeight,
              fontFamily: 'Tajawal'),
        ),
        SizedBox(
          width: ScreenHelper.screenWidth(context, factor),
        ),
        GestureDetector(
          onTap: ontap,
          child: Icon(
            iconData,
            size: 30,
            color: kMiddleColor,
          ),
        ),
      ],
    );
  }
}
