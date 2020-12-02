import 'package:changehorizonsfreelancer/helpers/screen_helper.dart';
import 'package:changehorizonsfreelancer/ui/widgets/custom_scaffold.dart';
import 'package:changehorizonsfreelancer/ui/widgets/save_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../constants.dart';

class MainUpdate extends StatefulWidget {
  @override
  _MainUpdateState createState() => _MainUpdateState();
}

class _MainUpdateState extends State<MainUpdate> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: 'تعديل رقم الهاتف',
      onBack: (){},
      child:  Container(
    child: Padding(
      padding: const EdgeInsets.fromLTRB(0.0,140.0,10.0,20.0),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.mobile_friendly_sharp,
                  color: kRightColor,
                  size: 120,
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.circle,
                  size: 10,
                  color: kRightColor,
                ),
                Icon(
                  Icons.circle,
                  size: 10,
                  color: kRightColor,
                ),
                Icon(
                  Icons.circle,
                  size: 10,
                  color: kRightColor,
                ),
                Icon(
                  Icons.circle,
                  size: 10,
                  color: kRightColor,
                ),
                Icon(
                  Icons.circle,
                  size: 10,
                  color: kRightColor,
                ),
                Icon(
                  Icons.circle,
                  size: 10,
                  color: kRightColor,
                ),
                Icon(
                  Icons.circle,
                  size: 10,
                  color: kRightColor,
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.mobile_friendly_sharp,
                  color: kRightColor,
                  size: 120,
                ),

              ],
            ),
            SizedBox(
              height: 35,
            ),
            Text(
                "رقم الهاتف المسجل",
                style: Theme.of(context).textTheme.headline.copyWith(
                  fontSize: 18,
                  fontFamily: 'Tajawal',
                  color: Colors.grey.shade500,
                  fontWeight: FontWeight.bold,
                )
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.circle,
                  size: 10,
                  color: Colors.black,
                ),

            Icon(
              Icons.circle,
              size: 10,
              color: Colors.black,
            ),
            Icon(
              Icons.circle,
              size: 10,
              color: Colors.black,
            ),
            Icon(
              Icons.circle,
              size: 10,
              color: Colors.black,
            ),
            Icon(
              Icons.circle,
              size: 10,
              color: Colors.black,
            ),
            Icon(
              Icons.circle,
              size: 10,
              color: Colors.black,
            ),
            Icon(
              Icons.circle,
              size: 10,
              color: Colors.black,
            ),
            Icon(
              Icons.circle,
              size: 10,
              color: Colors.black,
            ),
            Icon(
              Icons.circle,
              size: 10,
              color: Colors.black,
            ),
            Icon(
              Icons.circle,
              size: 10,
              color: Colors.black,
            ),
            Icon(
              Icons.circle,
              size: 10,
              color: Colors.black,
            ),
            Icon(
              Icons.circle,
              size: 10,
              color: Colors.black,
            ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("هذا يغير رقم الهاتف الذي قمت بتسجيله في DIONE",
                    style: Theme.of(context).textTheme.headline.copyWith(
                      fontSize: 12,
                      fontFamily: 'Tajawal',
                      color: Colors.grey.shade500,
                      fontWeight: FontWeight.bold,
                    )),

              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(" اضغط التالي للمتابعة",
                    style: Theme.of(context).textTheme.headline.copyWith(
                      fontSize: 12,
                      fontFamily: 'Tajawal',
                      color: Colors.grey.shade500,
                      fontWeight: FontWeight.bold,
                    )),
              ],
            ),
            SizedBox(
              height: 170,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SaveButton(
                 backgroundColor: kRightColor,
               //  width: 120,
                 onPressed: (){},
                 title: 'التالي',

               ),
            ),
            SizedBox(
              height: 20.0,
            ),
            _ButtonBar(),

          ],
        ),
      ),
    ),
      )
    );
  }
}

Widget _ButtonBar(){
  return Container(
    child: Row(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Divider(
          height: 1,
          thickness: 3,
        ),
        Expanded(
          child:  Icon(Icons.home, color: Colors.grey, size: 40),
        ),
        Expanded(
          child:  Icon(Icons.message, color: Colors.grey, size: 40),
        ),
        Expanded(
          child:  Icon(Icons.person, color: Colors.grey, size: 40),
        ),
        Expanded(
          child:  Icon(Icons.settings, color: Colors.grey, size: 40),
        ),

      ],

    ),
  );
}