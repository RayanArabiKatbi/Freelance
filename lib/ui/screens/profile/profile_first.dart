 

import 'package:changehorizonsfreelancer/ui/widgets/custom_scaffold.dart';
import 'package:changehorizonsfreelancer/ui/widgets/header_tile.dart';
import 'package:changehorizonsfreelancer/ui/widgets/header_tile_row.dart';
import 'package:flutter/material.dart';

import 'package:changehorizonsfreelancer/helpers/screen_helper.dart';
import 'package:changehorizonsfreelancer/ui/widgets/custom_scaffold.dart';
import 'package:changehorizonsfreelancer/ui/widgets/round_button.dart';
import 'package:changehorizonsfreelancer/ui/widgets/switch_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../constants.dart';


class ClientProfile extends StatefulWidget {
  @override
  _ClientProfileState createState() => _ClientProfileState();
}

class _ClientProfileState extends State<ClientProfile> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: 'الملف الشخصي',
      onBack: () {},
      child: Padding(
        padding: EdgeInsets.only(
          top: ScreenHelper.screenHeight(context, 20.0),
          bottom: ScreenHelper.screenHeight(context, 10.0),
        ),
        child: Column(
          children: <Widget>[
            _buildClientInfo(text: 'محمد محمد', subText: 'عميل'),
            HeaderTile(
              title: 'معلومات شخصية',
              expanded: true,
              icon: Icons.create,
              children: [
                _buildClientInfo(text: 'الاسم الأول', subText: 'محمد'),
                _buildClientInfo(text: 'اسم العائلة', subText: 'محمد'),
                _buildClientInfo(
                    text: 'اللغة المفضلة للتواصل', subText: 'عميل'),
              ],
            ),
            HeaderTile(
              title: 'معلومات التواصل',
              children: [
                _buildClientInfo(
                    text: 'البريد الالكتروني', subText: 'MM1232GMAIL.COM'),
                _buildClientInfo(
                    text: 'رقم الجوال',
                    subText: '00972599809892',
                    icon: Icons.create),
              ],
            ),
            HeaderTile(
              title: 'معلومات الأمن',
              children: [
                _buildClientInfo(
                    text: 'كلمة المرور',
                    subText: '٠٠٠٠٠٠٠٠٠',
                    icon: Icons.create),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildClientInfo(
      {@required String subText, @required String text, IconData icon}) {
    return HeaderTileRow(
      title: text,
      subTitle: subText,
      trailingIcon: icon,
      external: false,
      iconTint: Colors.grey,
    );
  }
}
