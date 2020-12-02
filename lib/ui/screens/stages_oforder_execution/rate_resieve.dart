import 'package:changehorizonsfreelancer/ui/widgets/custom_scaffold.dart';
import 'package:changehorizonsfreelancer/ui/widgets/icon_button_with_title.dart';
import 'package:changehorizonsfreelancer/ui/widgets/save_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RateRecieve extends StatefulWidget {
  @override
  _RateRecieveState createState() => _RateRecieveState();
}

class _RateRecieveState extends State<RateRecieve> {
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

          ],
        ),

      ),
    );
  }
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
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   SaveButton(
                     title: 'تقييم العمل',
                     onPressed: () {},
                   ),
                 ],
                ),
              )

            ],
          ),

        ),
      )
  );
}

Widget _BuildIcone() {
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