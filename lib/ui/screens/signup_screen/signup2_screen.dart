
import 'package:changehorizonsfreelancer/constants.dart';
import 'package:changehorizonsfreelancer/helpers/screen_helper.dart';
import 'package:changehorizonsfreelancer/ui/screens/fill_forms/first_fill_form.dart';
import 'package:changehorizonsfreelancer/ui/widgets/custom_radio_tile.dart';
import 'package:changehorizonsfreelancer/ui/widgets/custom_scaffold.dart';
import 'package:changehorizonsfreelancer/ui/widgets/outlined_textfield.dart';
import 'package:changehorizonsfreelancer/ui/widgets/save_button.dart';
import 'package:changehorizonsfreelancer/ui/widgets/text_with_link.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SignUpScreen2 extends StatefulWidget {
  static const String routeName = '/sign up2 screen';

  @override
  _SignUpScreen2State createState() => _SignUpScreen2State();
}

class _SignUpScreen2State extends State<SignUpScreen2> {
  int _selectedRadio = 0;
  TextEditingController _numberController;

  @override
  void initState() {
    _numberController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _numberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: 'تسجيل جديد',
      onBack: () {},
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(kMainPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'نوع الحساب',
                  style: Theme.of(context).textTheme.headline5,
                ),
                Row(
                  children: <Widget>[
                    _buildRadio(
                      radioNumber: 1,
                      title: 'عميل',
                    ),
                    _buildRadio(
                      radioNumber: 2,
                      title: 'مقدم خدمه',
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30),
            _buildTextFieldWithText(
                controller: _numberController, title: 'رقم الهاتف'),
            SizedBox(
              height: 50,
            ),
            SaveButton(
              width: double.maxFinite,
              title: 'دخول',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>FirstFillForm()));
              },
            ),
            SizedBox(height: 20),
            TextWithLink(
              label: 'مستخدم جديد؟',
              linkLabel: 'سجل الآن',
              onLinkTapped: () {
                print('tapped');
              },
            ),
            _buildSocialSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildSocialSection() {
    Widget myDivider = Expanded(
      child: Container(
        height: 1,
        color: Colors.grey.withOpacity(0.5),
      ),
      flex: 2,
    );

    return Container(
      height: ScreenHelper.screenHeight(context, 200),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            children: <Widget>[
              myDivider,
              Expanded(
                  child: Text(
                'أو',
                style: Theme.of(context).textTheme.headline5,
                textAlign: TextAlign.center,
              )),
              myDivider,
            ],
          ),
          Text(
            'يمكنك تسجيل الدخول عن طريق',
            style: Theme.of(context).textTheme.headline5,
            textAlign: TextAlign.center,
          ),
          Material(
            child: Ink(
              height: 80,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      'assets/icons/facebook.png',
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  SizedBox(
                    width: kMainPadding * 2,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      'assets/icons/google.png',
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
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

  Widget _buildTextFieldWithText(
      {TextEditingController controller, String title}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: Theme.of(context).textTheme.headline5,
        ),
        SizedBox(
          height: 10,
        ),
        OutlinedTextField(
          controller: controller,
        ),
      ],
    );
  }
}
