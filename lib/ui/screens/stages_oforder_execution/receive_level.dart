import 'package:changehorizonsfreelancer/helpers/screen_helper.dart';
import 'package:changehorizonsfreelancer/ui/widgets/custom_scaffold.dart';
import 'package:changehorizonsfreelancer/ui/widgets/icon_button_with_title.dart';
import 'package:changehorizonsfreelancer/ui/widgets/save_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Rec_level extends StatefulWidget {
  @override
  _Rec_levelState createState() => _Rec_levelState();
}

class _Rec_levelState extends State<Rec_level> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: 'مراحل تنفيذ الطلب',
      onBack: (){},
      child: Container(
        child: Column(
          children: <Widget>[
            _BuildIcone(),
            _BuildText(),
            SaveButton(
              width: double.maxFinite,
              title: 'تقييم العمل',
              onPressed: () {},
            ),
            SizedBox(
              height: 190.0,
            ),
            _ButtonBar(),

          ],
        ),

      ),
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
Widget _BuildText(){
  return Container(
    child: Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 15.0,
            ),
            Text("مرحلة الاستلام",
//          style: Theme.of(context).textTheme.headline5.copyWith(
//          fontSize: 14,
//          color: Colors.blue),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text("تم الانتهاء من تنفيذ العمل واستلام كافة الملفات التي تم تسليمها"),
            SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Icon(
                    Icons.link,
                    color: Colors.pink,
                    size: 20,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Text(
                      "drive.google.com",
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Icon(
                    Icons.photo,
                    color: Colors.pink,
                    size: 20,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Text(
                    "google.jpeg",
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Icon(
                    Icons.link,
                    color: Colors.pink,
                    size: 20,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Text(
                    "drive.google.com",
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Icon(
                    Icons.photo,
                    color: Colors.pink,
                    size: 20,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Text(
                    "google.jpeg",
                  )
                ],
              ),
            ),

          ],
        ),

      ),
    )
  );
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