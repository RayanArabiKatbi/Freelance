 
import 'package:changehorizonsfreelancer/constants.dart';
import 'package:changehorizonsfreelancer/helpers/screen_helper.dart';
import 'package:changehorizonsfreelancer/ui/screens/signup_screen/signup2_screen.dart';
import 'package:changehorizonsfreelancer/ui/widgets/custom_radio_tile.dart';
import 'package:changehorizonsfreelancer/ui/widgets/custom_scaffold.dart';
import 'package:changehorizonsfreelancer/ui/widgets/outlined_textfield.dart';
import 'package:changehorizonsfreelancer/ui/widgets/save_button.dart';
import 'package:changehorizonsfreelancer/ui/widgets/text_with_link.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class SignUpScreen extends StatefulWidget {
  static const String routeName = '/sign up screen';

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  int _selectedRadio = 0;
  TextEditingController _userNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _rePasswordController = TextEditingController();

  @override
  void dispose() {
    _userNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _rePasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: 'تسجيل جديد',
      onBack: () {},
      child: Container(
        width: double.infinity,
        height: ScreenHelper.screenHeight(context, 800),
        padding: EdgeInsets.all(kMainPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'نوع الحساب',
                  style: Theme.of(context).textTheme.headline5,
                ),
                Row(
                  children: <Widget>[
                    _buildRadio(title: 'عميل', radioNumber: 1),
                    SizedBox(
                      width: 30,
                    ),
                    _buildRadio(title: 'مقدم خدمة', radioNumber: 2),
                  ],
                ),
              ],
            ),
            _buildTextFieldWithText(
                controller: _userNameController, title: 'اسم المستخدم'),
            _buildTextFieldWithText(
                controller: _emailController, title: 'الايميل'),
            _buildTextFieldWithText(
                controller: _passwordController,
                title: 'كلمه المرور',
                password: true),
            _buildTextFieldWithText(
                controller: _rePasswordController,
                title: 'اعاده كلمه المرور',
                last: true,
                password: true),
            SaveButton(
              width: double.maxFinite,
              title: 'التالى',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen2()));
              },
            ),
            TextWithLink(
              label: 'هل تمتلك حساب؟',
              linkLabel: ' سجل دخولك هنا',
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
      {TextEditingController controller,
      String title,
      bool last = false,
      bool password = false}) {
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
          textInputAction: last ? TextInputAction.done : TextInputAction.next,
          password: password,
        ),
      ],
    );
  }
}
