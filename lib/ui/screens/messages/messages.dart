

import 'package:changehorizonsfreelancer/ui/screens/chat/chat_screen.dart';
import 'package:changehorizonsfreelancer/ui/widgets/filled_textfield.dart';
import 'package:changehorizonsfreelancer/ui/widgets/round_button.dart';
import 'package:changehorizonsfreelancer/ui/widgets/save_button.dart';
import 'package:changehorizonsfreelancer/ui/widgets/simple_chat_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../constants.dart';
import '../../../ui/widgets/custom_scaffold.dart';

class Messages extends StatefulWidget {
  static const String routeName = '/messages';

  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  TextEditingController _searchController;
  final List<MsgModel> _msgList = [
    new MsgModel(
        image_url: 'assets/icons/contact.png',
        user_name: 'اسم المستخدم',
        msg: 'شكرا لك علي تعاملك الراقي',
        time: 'منذ يوم'),
    new MsgModel(
        image_url: 'assets/icons/contact.png',
        user_name: 'اسم المستخدم',
        msg: 'شكرا لك علي تعاملك الراقي',
        time: 'منذ يومين'),
    new MsgModel(
        image_url: 'assets/icons/contact.png',
        user_name: 'اسم المستخدم',
        msg: 'شكرا لك علي تعاملك الراقي',
        time: 'منذ شهر'),
    new MsgModel(
        image_url: 'assets/icons/contact.png',
        user_name: 'اسم المستخدم',
        msg: 'شكرا لك علي تعاملك الراقي',
        time: 'شهر يوم'),
    new MsgModel(
        image_url: 'assets/icons/contact.png',
        user_name: 'اسم المستخدم',
        msg: 'شكرا لك علي تعاملك الراقي',
        time: 'منذ شهر'),
    new MsgModel(
        image_url: 'assets/icons/contact.png',
        user_name: 'اسم المستخدم',
        msg: 'شكرا لك علي تعاملك الراقي',
        time: 'شهر يوم'),
    new MsgModel(
        image_url: 'assets/icons/contact.png',
        user_name: 'اسم المستخدم',
        msg: 'شكرا لك علي تعاملك الراقي',
        time: 'منذ شهر'),
    new MsgModel(
        image_url: 'assets/icons/contact.png',
        user_name: 'اسم المستخدم',
        msg: 'شكرا لك علي تعاملك الراقي',
        time: 'شهر يوم'),
  ];
  final bool _isSigned = true;

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: "الرسائل",
      onBack: () => {print('messages')},
      child: _isSigned ? _buildSigned() : _buildNotSigned(),
      scrolls: false,
    );
  }

  Widget _buildNotSigned() {
    return LayoutBuilder(builder: (context, constraints) {
      final height = constraints.biggest.height;
      return SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(kMainPadding),
          alignment: Alignment.center,
          height: height,
          child: Container(
            padding: EdgeInsets.all(kMainPadding) +
                EdgeInsets.only(
                  top: kMainPadding,
                ),
            decoration: BoxDecoration(
              color: kLightGrey,
              borderRadius: BorderRadius.all(Radius.circular(
                      8.0) //                 <--- border radius here
                  ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  "لستَ مسجلاً بعد",
                  style: Theme.of(context).textTheme.headline3,
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  "لمراسلة أحد الأعضاء عليك تسجيل الدخول أولا",
                  style: Theme.of(context).textTheme.headline5,
                ),
                SizedBox(
                  height: kMainPadding * 2,
                ),
                SaveButton(
                  title: "الإنتقال لصفحة التسجيل",
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      );
    });
  }

  Widget _buildSigned() {
    return Stack(
      children: <Widget>[
        Positioned(
          bottom: kMainPadding,
          left: kMainPadding,
          child: RoundButton(
            fillColor: kMiddleColor,
            onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatScreen())) ,
            child: Stack(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.white,
                  size: 30,
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Icon(
                    Icons.add_circle,
                    size: 15,
                    color: kRightColor,
                  ),
                ),
              ],
            ),
          ),
        ),
        SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.all(kMainPadding),
              child: Column(
                children: <Widget>[
                  FilledInputField(
                    controller: this._searchController,
                    color: kLightGrey,
                    prefixIcon: Icon(Icons.search),
                    textAlign: TextAlign.center,
                    hintColor: Colors.grey,
                    hint: "البحث في الرسائل",
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  ListView.builder(
                    itemCount: _msgList.length,
                    primary: false,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final message = _msgList[index];
                      return SimpleChatTile(
                        message: message.msg,
                        userName: message.user_name,
                        image: message.image_url,
                        elapsedTime: message.time,
                      );
                    },
                  ),
                  SizedBox(
                    height: 80,
                  ),
                ],
              )),
        ),
      ].reversed.toList(),
    );
  }
}

class MsgModel {
  final String user_name;
  final String image_url;
  final String msg;
  final String time;
  MsgModel({this.image_url, this.user_name, this.msg, this.time});
}
