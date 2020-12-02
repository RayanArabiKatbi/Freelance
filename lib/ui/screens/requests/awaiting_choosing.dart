// by Karim Mohamed

import 'package:changehorizonsfreelancer/helpers/screen_helper.dart';
import 'package:changehorizonsfreelancer/ui/screens/requests/refuse_requests.dart';
import 'package:changehorizonsfreelancer/ui/widgets/save_button.dart';
import 'package:changehorizonsfreelancer/ui/widgets/skip_button.dart';
import 'package:flutter/material.dart';

import 'accept_requests.dart';

class AwaitingChoosing extends StatelessWidget {
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
    showMaterialAcceptDialog() {
      showDialog(context: context, builder: (_) => AcceptAlert());
    }

    showMaterialRefuseDialog() {
      showDialog(context: context, builder: (_) => RefuseAlert());
    }

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
              Row(
                children: <Widget>[
                  Icon(Icons.access_time,
                      size: 15, color: Colors.grey.shade700),
                  Text('منذ يوم',
                      style: Theme.of(context).textTheme.headline5.copyWith(
                            fontSize: 15,
                            fontFamily: 'Tajawal',
                            color: Colors.grey.shade700,
                          )),
                  Spacer(),
                  Icon(Icons.subdirectory_arrow_right,
                      size: 15, color: Colors.lightBlue.shade500),
                  Text('عرض الطلب',
                      style: Theme.of(context).textTheme.headline5.copyWith(
                            fontSize: 15,
                            fontFamily: 'Tajawal',
                            color: Colors.lightBlue.shade500,
                          )),
                ],
              ),
              SizedBox(
                height: ScreenHelper.screenHeight(context, 10.0),
              ),
              Row(
                children: <Widget>[
                  Text('العميل:',
                      style: Theme.of(context).textTheme.headline5.copyWith(
                            fontSize: 15,
                            fontFamily: 'Tajawal',
                           color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          )),
                  Text(' محمد محمد',
                      style: Theme.of(context).textTheme.headline5.copyWith(
                            fontSize: 15,
                            fontFamily: 'Tajawal',
                            color: Colors.blue.shade500,
                          )),
                ],
              ),
              SizedBox(
                height: ScreenHelper.screenHeight(context, 15.0),
              ),
              Text('عمل هوية شركة او تطبيق',
                  style: Theme.of(context).textTheme.headline5.copyWith(
                        fontSize: 15,
                        fontFamily: 'Tajawal',
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      )),
              SizedBox(
                height: ScreenHelper.screenHeight(context, 15.0),
              ),
              Row(
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    child: SaveButton(
                      width: 120,
                      onPressed: () {
                        showMaterialAcceptDialog();
                      },
                      title: 'وافق علي الطلب',
                    ),
                  ),
                  SizedBox(
                    width: ScreenHelper.screenWidth(context, 15.0),
                  ),
                  Flexible(
                    flex: 1,
                    child: SkipButton(
                      width: 120,
                      onPressed: () {
                        showMaterialRefuseDialog();
                      },
                      color: Colors.blue,
                      title: 'ارفض الطلب',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: ScreenHelper.screenHeight(context, 15.0),
        ),
      ],
    );
  }
}
