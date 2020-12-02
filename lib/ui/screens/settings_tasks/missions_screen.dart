 
import 'package:changehorizonsfreelancer/constants.dart';
import 'package:changehorizonsfreelancer/ui/screens/HandOver/handOver_screen.dart';
import 'package:changehorizonsfreelancer/ui/screens/messages/messages.dart';
import 'package:changehorizonsfreelancer/ui/widgets/check_item.dart';
import 'package:changehorizonsfreelancer/ui/widgets/custom_scaffold.dart';
import 'package:changehorizonsfreelancer/ui/widgets/double_button.dart';
import 'package:changehorizonsfreelancer/ui/widgets/note_bar.dart';
import 'package:changehorizonsfreelancer/ui/widgets/progress_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../helpers/screen_helper.dart';
import '../../widgets/switch_button.dart';

class Task {
  String title;
  bool status;

  Task({this.title, this.status});
}

class MissionsScreen extends StatefulWidget {
  static const String routeName = '/ missions screen';

  @override
  _MissionsScreenState createState() => _MissionsScreenState();
}

class _MissionsScreenState extends State<MissionsScreen> {
  bool switchIndicator = false;

  List<Task> tasks = [
    Task(title: 'اجراء دراسة لتجربة المستخدم', status: true),
    Task(title: 'اجراء دراسة لتجربة المستخدم', status: false),
    Task(title: 'اجراء دراسة لتجربة المستخدم', status: true),
    Task(title: 'اجراء دراسة لتجربة المستخدم', status: false),
    Task(title: 'اجراء دراسة لتجربة المستخدم', status: true),
    Task(title: 'اجراء دراسة لتجربة المستخدم', status: true),
    Task(title: 'اجراء دراسة لتجربة المستخدم', status: false),
    Task(title: 'اجراء دراسة لتجربة المستخدم', status: true),
    Task(title: 'اجراء دراسة لتجربة المستخدم', status: true),
    Task(title: 'اجراء دراسة لتجربة المستخدم', status: true),
    Task(title: 'اجراء دراسة لتجربة المستخدم', status: true),
    Task(title: 'اجراء دراسة لتجربة المستخدم', status: true),
    Task(title: 'اجراء دراسة لتجربة المستخدم', status: true),
    Task(title: 'اجراء دراسة لتجربة المستخدم', status: true),
    Task(title: 'اجراء دراسة لتجربة المستخدم', status: true),
    Task(title: 'اجراء دراسة لتجربة المستخدم', status: true),
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: 'مهماتي',
      onBack: () {},
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: ScreenHelper.screenWidth(context, kMainPadding)),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: ScreenHelper.screenHeight(context, kMainPadding),
            ),
            SwitchButton(
              first: this.switchIndicator,
              onChange: (value) {
                setState(() {
                  this.switchIndicator = value;
                });
              },
              secondTitle: 'مهام منتهية',
              firstTitle: 'مهام قيد التنفيذ',
            ),
            SizedBox(
              height: ScreenHelper.screenHeight(context, 10.0),
            ),
            _buildProgressMissions(
              tasks: switchIndicator
                  ? tasks
                  : tasks.where((task) => task.status).toList(),
              isComplete: switchIndicator,
            ),
            SizedBox(
              height: ScreenHelper.screenHeight(context, 40.0),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProgressMissions({bool isComplete, List<Task> tasks}) {
    return Column(
      children: <Widget>[
        Container(
          decoration: ShapeDecoration(
            color: kDarkHeaderBackground,
            shape: RoundedRectangleBorder(
              borderRadius: isComplete
                  ? BorderRadius.vertical(
                      top: Radius.circular(
                        ScreenHelper.screenWidth(context, 10.0),
                      ),
                    )
                  : BorderRadius.circular(
                      ScreenHelper.screenWidth(context, 10.0),
                    ),
            ),
          ),
          padding: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: ScreenHelper.screenWidth(context, 10.0)) +
              EdgeInsets.only(top: ScreenHelper.screenHeight(context, 12)),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: ScreenHelper.screenHeight(context, 4),
                      ),
                      Text(
                        'تصميم تطبيق',
                        style: Theme.of(context)
                            .textTheme
                            .title
                            .copyWith(color: Colors.grey),
                      ),
                      SizedBox(
                        height: ScreenHelper.screenHeight(context, 4),
                      ),
                      Text(
                        'العميل: ${'احمد احمد'}',
                        style: Theme.of(context)
                            .textTheme
                            .subhead
                            .copyWith(color: kMiddleColor),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.access_time,
                        color: kDarkGrey,
                        size: 15,
                      ),
                      SizedBox(
                        width: ScreenHelper.screenWidth(context, 4),
                      ),
                      Text(
                        'منذ ${14} ساعة',
                        style: Theme.of(context)
                            .textTheme
                            .body2
                            .copyWith(color: kDarkGrey),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                height: ScreenHelper.screenHeight(context, 250.0),
                decoration: ShapeDecoration(
                  color: kDarkHeaderBackground,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      ScreenHelper.screenWidth(context, 10.0),
                    ),
                  ),
                ),
                child: ListView.separated(
                  itemCount: tasks.length,
                  itemBuilder: (context, index) => CheckItem(
                    title: tasks[index].title,
                    checkValue: tasks[index].status,
                    onChange: (value) {
                      setState(() {
                        tasks[index].status = value;
                      });
                    },
                  ),
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      height: ScreenHelper.screenHeight(context, 6),
                    );
                  },
                ),
              ),
              SizedBox(
                height: ScreenHelper.screenHeight(
                  context,
                  16,
                ),
              ),
              ProgressBar(
                rate: isComplete ? 100 : 30,
                background: Colors.grey,
              ),
              SizedBox(
                height: ScreenHelper.screenHeight(
                  context,
                  16,
                ),
              ),
              isComplete
                  ? Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: ScreenHelper.screenHeight(context, 10)),
                      child: NoteBar(
                        message:
                            'لقد تجاوزت موعد التسليم. قم بتعديل الموعد واهلم العميل بسبب التأخير',
                        onPressed: () {},
                      ),
                    )
                  : _buildDeliveryTime(
                      time: 'YYYY-MM-DD',
                    )
            ],
          ),
        ),
          DoubleButton(
            firstTitle: 'سلم العمل',
            secondTitle: 'راسل العميل',
            firstIcon: Icons.subdirectory_arrow_right,
            secondIcon: Icons.chat_bubble,
            onFirst: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>HandOver())),
            onSecond: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Messages()))
          ),
      ],
    );
  }

  Widget _buildDeliveryTime({@required String time}) {
    return Container(
      width: double.infinity,
      child: RichText(
        text: TextSpan(
          text: 'موعد التسليم : ',
          style: Theme.of(context).textTheme.subhead.copyWith(
                color: kMiddleColor,
              ),
          children: [
            TextSpan(
              text: '$time',
              style: Theme.of(context).textTheme.subhead.copyWith(),
            ),
          ],
        ),
      ),
    );
  }
}
