import 'package:changehorizonsfreelancer/ui/widgets/check_item.dart';
import 'package:changehorizonsfreelancer/ui/widgets/custom_scaffold.dart';
import 'package:changehorizonsfreelancer/ui/widgets/icon_button_with_title.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class Send extends StatefulWidget {
  @override
  _SendState createState() => _SendState();
}

class _SendState extends State<Send> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: 'مراحل تنفيذ الطلب',
      onBack: () {},
      child: Container(
        child: Column(
          children: <Widget>[
          _BuildIcone(),
            SizedBox(
              height: 8.0,
            ),
//            Row(
//                children: <Widget>[
//                   CheckItem(
//                     title: 'المرحلة الأولى',
//                     backgroundColor: Colors.white30,
//                     checkValue: false,
//                ),
//
//              ],
//
//            ),
            Wrap(
              children: [
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CheckItem(
                        title: 'المرحلة الأولى',
                        backgroundColor: Colors.white30,
                        checkValue: false,
                      ),
                      CheckItem(
                        title: 'المرحلة الثانية',
                        backgroundColor: Colors.white30,
                        checkValue: false,
                      ),
                      CheckItem(
                        title: 'المرحلة الثالثة',
                        backgroundColor: Colors.white30,
                        checkValue: false,
                      ),

                    ],


                  ),
                )
              ],
            )


          ],
        ),

      ),

    );
  }
}


Widget _BuildIcone(){
  return Container(
    child: Row(

      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 8.0,
        ),
        Expanded(
          child: IconButtonWithTitle(
            //  onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>MyWallet())),
            title: 'مرحلة البدء',
            iconData: Icons.looks_one,
          ),
        ),
        Expanded(
          child: IconButtonWithTitle(
            //  onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>MyWallet())),
            title: 'مرحلة التنفيذ',
            iconData: Icons.looks_two,
          ),
        ),
        Expanded(
          child: IconButtonWithTitle(
            //  onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>MyWallet())),
            title: 'مرحلة الاستلام',
            iconData: Icons.looks_3,
          ),
        ),
        SizedBox(
          height: 8.0,
        ),

      ],
    ),
  );
}
