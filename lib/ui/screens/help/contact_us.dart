 
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:changehorizonsfreelancer/ui/widgets/custom_scaffold.dart';
import 'package:changehorizonsfreelancer/helpers/screen_helper.dart';
import '../../../constants.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  bool isSwitched = true;
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      scrolls: false,
      title: "تواصل معنا",
      onBack: () {},
      child: Container(
        padding:
            EdgeInsets.all(ScreenHelper.screenWidth(context, kMainPadding)),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: ScreenHelper.screenHeight(context, 20),
            ),
            _infoBox(
                icon: Icons.language,
                title: "الموقع",
                subtitle: "www.website.com"),
            _infoBox(
                icon: Icons.phone,
                title: "رقم الهاتف",
                subtitle: "XXX XXXX XXX XXX"),
            _infoBox(
                icon: Icons.email,
                title: "الايميل",
                subtitle: "XXX XXXX XXX XXX"),
            _infoBox(
                icon: Icons.location_on,
                title: "العنوان",
                subtitle: "XXX XXXX XXX XXX"),
          ],
        ),
      ),
    );
  }

  Widget _infoBox(
      {@required String title,
      @required String subtitle,
      @required IconData icon}) {
    return Container(
      margin:
          EdgeInsets.symmetric(vertical: ScreenHelper.screenWidth(context, 10)),
      padding: EdgeInsets.all(ScreenHelper.screenWidth(context, 10)),
      decoration: ShapeDecoration(
        color: kLightGrey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            8.0,
          ),
        ),
      ),
      child: Column(children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Icon(
              icon,
              color: kMiddleColor,
              size: 18,
            ),
            SizedBox(
              width: ScreenHelper.screenWidth(context, 5),
            ),
            Text(title,
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(color: kMiddleColor)),
          ],
        ),
        SizedBox(
          height: ScreenHelper.screenWidth(context, 5),
        ),
        Row(
          children: <Widget>[
            Text(subtitle, style: Theme.of(context).textTheme.caption)
          ],
        ),

      ]),
    );
  }
}
