 
import 'package:changehorizonsfreelancer/helpers/screen_helper.dart';
import 'package:changehorizonsfreelancer/ui/widgets/custom_scaffold.dart';
import 'package:changehorizonsfreelancer/ui/widgets/round_button.dart';
import 'package:changehorizonsfreelancer/ui/widgets/switch_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../constants.dart';

class MyFavorites extends StatefulWidget {
  @override
  _MyFavoritesState createState() => _MyFavoritesState();
}

class _MyFavoritesState extends State<MyFavorites> {
  bool _switchIndicator = false;

  final List<MsgModel> _msgList = [
    MsgModel(
        image_url: 'assets/icons/contact.png',
        user_name: 'اسم المستخدم',
        msg: 'شكرا لك علي تعاملك الراقي'),
    MsgModel(
        image_url: 'assets/icons/contact.png',
        user_name: 'اسم المستخدم',
        msg: 'شكرا لك علي تعاملك الراقي'),
    MsgModel(
        image_url: 'assets/icons/contact.png',
        user_name: 'اسم المستخدم',
        msg: 'شكرا لك علي تعاملك الراقي'),
    MsgModel(
        image_url: 'assets/icons/contact.png',
        user_name: 'اسم المستخدم',
        msg: 'شكرا لك علي تعاملك الراقي'),
    MsgModel(
        image_url: 'assets/icons/contact.png',
        user_name: 'اسم المستخدم',
        msg: 'شكرا لك علي تعاملك الراقي'),
    MsgModel(
        image_url: 'assets/icons/contact.png',
        user_name: 'اسم المستخدم',
        msg: 'شكرا لك علي تعاملك الراقي'),
    MsgModel(
        image_url: 'assets/icons/contact.png',
        user_name: 'اسم المستخدم',
        msg: 'شكرا لك علي تعاملك الراقي'),
    MsgModel(
        image_url: 'assets/icons/contact.png',
        user_name: 'اسم المستخدم',
        msg: 'شكرا لك علي تعاملك الراقي'),
    MsgModel(
        image_url: 'assets/icons/contact.png',
        user_name: 'اسم المستخدم',
        msg: 'شكرا لك علي تعاملك الراقي'),
    MsgModel(
        image_url: 'assets/icons/contact.png',
        user_name: 'اسم المستخدم',
        msg: 'شكرا لك علي تعاملك الراقي'),
  ];

  final List<TaskModel> _tasksList = [
    TaskModel(image_url: 'assets/icons/id.png', title: "تصميم هوية"),
    TaskModel(image_url: 'assets/icons/paint.png', title: "فنون تشكيلية"),
    TaskModel(image_url: 'assets/icons/html.png', title: "تصميم مواقع"),
    TaskModel(image_url: 'assets/icons/id.png', title: "تصميم هوية"),
    TaskModel(image_url: 'assets/icons/paint.png', title: "فنون تشكيلية"),
    TaskModel(image_url: 'assets/icons/html.png', title: "تصميم مواقع"),
    TaskModel(image_url: 'assets/icons/id.png', title: "تصميم هوية"),
    TaskModel(image_url: 'assets/icons/paint.png', title: "فنون تشكيلية"),
    TaskModel(image_url: 'assets/icons/html.png', title: "تصميم مواقع"),
    TaskModel(image_url: 'assets/icons/id.png', title: "تصميم هوية"),
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: "مفضلتي",
      onBack: () => {print('messages')},
      child: Container(
          padding:
              EdgeInsets.all(ScreenHelper.screenWidth(context, kMainPadding)),
          child: Column(
            children: <Widget>[
              SwitchButton(
                first: this._switchIndicator,
                onChange: (value) {
                  setState(() {
                    this._switchIndicator = value;
                  });
                },
                secondTitle: 'مقدمي الخدمات',
                firstTitle: 'أعمال',
              ),
              SizedBox(
                height: ScreenHelper.screenHeight(context, 5),
              ),
              _switchIndicator == false
                  ? _buildMessagesSection(_msgList)
                  : _buildTasksSection(_tasksList),
            ],
          )),
    );
    ;
  }

  Widget _buildMessagesSection(List<MsgModel> msgList) {
    return ListView.separated(
      itemCount: msgList.length,
      primary: false,
      shrinkWrap: true,
      separatorBuilder: (context, index) => Container(
        height: kInPadding * 2,
      ),
      itemBuilder: (context, index) {
        final message = msgList[index];
        return InkWell(
          onTap: () {
            print('message pressed');
          },
          child: Ink(
            decoration: ShapeDecoration(
              color: kLightGrey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  8.0,
                ),
              ),
            ),
            child: ListTile(
              trailing: RoundButton(
                onPressed: () {
                  print('heart pressed');
                },
                child: ImageIcon(
                  AssetImage('assets/icons/heart.png'),
                  color: kDarkPinkForeground,
                  size: ScreenHelper.screenFont(context, 20),
                ),
              ),
              title: Text(
                message.user_name,
                style: Theme.of(context).textTheme.subtitle,
              ),
              subtitle: Text(
                message.msg,
                style: Theme.of(context).textTheme.subhead,
              ),
              leading: ImageIcon(
                AssetImage(message.image_url),
                color: kMiddleColor,
                size: ScreenHelper.screenFont(context, 45),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildTasksSection(List<TaskModel> tasksList) {
    return GridView.builder(
      itemCount: tasksList.length,
      primary: false,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: kMainPadding,
          mainAxisSpacing: kInPadding,
          childAspectRatio: 1),
      itemBuilder: (context, index) {
        final task = tasksList[index];
        return _buildTaskTile(task);
      },
    );
  }

  InkWell _buildTaskTile(TaskModel task) {
    return InkWell(
      onTap: () {
        print('item pressed');
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
            child: Ink(
              decoration: BoxDecoration(
                color: kDarkHeaderBackground,
                borderRadius: BorderRadius.circular(
                  4.0,
                ),
              ),
              width: double.infinity,
              child: ImageIcon(
                AssetImage(task.image_url),
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: ScreenHelper.screenHeight(context, 5),
          ),
          Text(
            task.title,
            style: Theme.of(context)
                .textTheme
                .subtitle
                .copyWith(color: kMiddleColor),
          ),
          RoundButton(
            onPressed: () {
              print('heart pressed');
            },
            child: ImageIcon(
              AssetImage('assets/icons/heart.png'),
              color: kDarkPinkForeground,
              size: ScreenHelper.screenFont(context, 15),
            ),
          ),
        ],
      ),
    );
  }
}

class MsgModel {
  final String user_name;
  final String image_url;
  final String msg;
  MsgModel({this.image_url, this.user_name, this.msg});
}

class TaskModel {
  final String title;
  final String image_url;
  TaskModel({
    this.image_url,
    this.title,
  });
}
