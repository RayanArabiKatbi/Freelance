
import 'package:changehorizonsfreelancer/ui/screens/fill_forms/second_fill_form.dart';
import 'package:changehorizonsfreelancer/ui/widgets/custom_scaffold.dart';
import 'package:changehorizonsfreelancer/ui/widgets/drop_down_list.dart';
import 'package:changehorizonsfreelancer/ui/widgets/filled_textfield.dart';
import 'package:changehorizonsfreelancer/ui/widgets/round_button.dart';
import 'package:changehorizonsfreelancer/ui/widgets/save_button.dart';
import 'package:changehorizonsfreelancer/ui/widgets/skip_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../constants.dart';

class FirstFillForm extends StatefulWidget {
  static const String routeName = '/first fill form';

  @override
  _FirstFillFormState createState() => _FirstFillFormState();
}

class _FirstFillFormState extends State<FirstFillForm> {
  List<TextEditingController> _skillsControllers = [];
  List<FocusNode> _skillsFocusNodes = [];

  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.yellowAccent,
    ));
    _skillsControllers
      ..add(TextEditingController())
      ..add(TextEditingController());
    _skillsFocusNodes..add(FocusNode())..add(FocusNode());
    super.initState();
  }

  @override
  void dispose() {
    _skillsControllers.forEach((controller) => controller?.dispose());
    _skillsControllers.clear();

    _skillsFocusNodes.forEach((node) => node?.dispose());
    _skillsFocusNodes.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: 'تسحيل جديد',
      onBack: () {},
      child: Container(
        margin: EdgeInsets.all(kMainPadding) +
            EdgeInsets.only(top: kSmallButtonSize),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _buildPadding(
                child: _buildHeader(header: 'الوظيفة'),
              ),
              _buildPadding(
                child: DropDownList(
                  items: ['مبرمج', 'مصمم'],
                  hint: 'مثال : مصمم جرافيك',
                  onChanged: (newValue) {

                  },
                ),
              ),
              SizedBox(
                height: kMainPadding + kSmallButtonSize,
              ),
              _buildPadding(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _buildHeader(header: 'المهارات'),
                  RoundButton(
                    child: Icon(
                      Icons.add,
                      color: kMiddleColor,
                      size: kSmallButtonSize,
                    ),
                    fillColor: kTextFieldBackground,
                    padding: EdgeInsets.all(0.0),
                    //elevation: 0.0,
                  ),
                ],
              )),
              SizedBox(
                height: 16.0,
              ),
              LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  final List<Widget> children = [];
                  if (_skillsControllers.length > 0) {
                    children.add(_buildPadding(
                        child: FilledInputField(
                      controller: _skillsControllers.first,
                      hint: '1  وصف المهارة',
                    )));
                  }
                  int i = 1;
                  children.addAll(_skillsControllers.skip(1).map((controller) {
                    i = i + 1;
                    return _buildPadding(
                      rightPadding: false,
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(vertical: kInPadding * 1.5),
                        child: Row(
                          children: <Widget>[
                            RoundButton(
                              child: Icon(
                                Icons.remove,
                                color: kMiddleColor,
                                size: kSmallButtonSize,
                              ),
                              fillColor: kMinusButtonBackground,
                              padding: EdgeInsets.all(0.0),
                            ),
                            SizedBox(
                              width: kInPadding,
                            ),
                            Expanded(
                              child: FilledInputField(
                                controller: controller,
                                fieldFocusNode: _skillsFocusNodes[i - 1],
                                textInputAction: i < _skillsFocusNodes.length
                                    ? TextInputAction.next
                                    : TextInputAction.done,
                                nextFocusNode: i < _skillsFocusNodes.length
                                    ? _skillsFocusNodes[i]
                                    : null,
                                hint: '$i  وصف المهارة',
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }));
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: children,
                  );
                },
              ),
              SizedBox(
                height: 16.0,
              ),
              _buildPadding(
                child: Padding(
                  padding: EdgeInsets.all(kInPadding),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: SaveButton(
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        width: kMainPadding,
                      ),
                      Expanded(
                        child: SkipButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondFillForm()));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPadding({@required Widget child, bool rightPadding = true}) {
    return Padding(
      padding: EdgeInsets.only(
          left: kSmallButtonSize + kInPadding,
          right: rightPadding ? kSmallButtonSize + kInPadding : 0.0),
      child: child,
    );
  }

  Widget _buildHeader({@required String header}) {
    return Text(
      header,
      style: Theme.of(context).textTheme.headline,
    );
  }
}
