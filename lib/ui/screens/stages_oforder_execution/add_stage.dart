import 'package:changehorizonsfreelancer/ui/widgets/outlined_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:changehorizonsfreelancer/helpers/screen_helper.dart';
import 'package:changehorizonsfreelancer/ui/widgets/check_item.dart';
import 'package:changehorizonsfreelancer/ui/widgets/save_button.dart';
import 'package:changehorizonsfreelancer/ui/widgets/skip_button.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';

class AddStage extends StatefulWidget {
  @override
  _AddStageState createState() => _AddStageState();
}

class _AddStageState extends State<AddStage> {
  TextEditingController _nameStepController = TextEditingController();
  TextEditingController _stepDiscribtion = TextEditingController();

  @override
  void dispose(){
    _nameStepController.dispose();
    _stepDiscribtion.dispose();
     super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    showMaterialConfirmRefuseDialog() {
      showDialog(context: context, builder: (_) => ConfrimTheAddition());
    }
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0))),

      title: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[
//          Padding(
//            padding:
//        //    EdgeInsets.only(right: ScreenHelper.screenWidth(context, 30)),
            //child:
        Text(
              'إضافة مرحلة',
              style: Theme.of(context).textTheme.headline5.copyWith(
               fontSize: 14,
               color: Colors.pinkAccent,
            ),
          ),
       //   ),
          SizedBox(
            height: 2.0,
          ),

          _buildTextFieldWithText(
              controller: _nameStepController, title: 'اسم المرحلة'),

          _buildTextFieldWithText(
              controller: _stepDiscribtion, title: 'وصف المرحلة'),
          SizedBox(
            height: 5.0,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: SaveButton(
            //      width: double.minPositive,
                  title: 'حفظ',
                  onPressed: () {
                    showMaterialConfirmRefuseDialog();
                  },
                ),
              ),
              SizedBox(
                width: kMainPadding,
              ),
              Expanded(
                child: SkipButton(
             //     width: double.minPositive,
                  title: 'إلغاء',
                  onPressed: () {
                  },
                ),
              )
            ],
          )

//          TextField(
//            style:
//            TextStyle(fontSize: 11, color: Colors.grey, fontFamily: 'Tajawal'),
//            textAlign: TextAlign.end,
//            decoration: InputDecoration(
//              contentPadding: EdgeInsets.only(
//                top: ScreenHelper.screenHeight(context, 0),
//                right: ScreenHelper.screenWidth(context, 2),
//              ),
//              border: OutlineInputBorder(
//                borderRadius: BorderRadius.all(Radius.circular(10.0)),
//              ),
//              focusedBorder: OutlineInputBorder(
//                borderSide: BorderSide(color: Colors.pink, width: 1.5),
//                borderRadius: BorderRadius.all(Radius.circular(10.0)),
//              ),
//              enabledBorder: OutlineInputBorder(
//                borderSide: BorderSide(color: Colors.pink, width: 1.5),
//                borderRadius: BorderRadius.all(Radius.circular(10.0)),
//              ),
//            ),
//    )
    ]),


    );






  }
}

class ConfrimTheAddition extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0))),
      title: Column(
        children: <Widget>[
          Icon(
            Icons.check_circle,
            color: kRightColor,
            size: 80,
          ),
          SizedBox(
            height: ScreenHelper.screenWidth(context, 15.0),
          ),
        ],
      ),
      contentPadding: EdgeInsets.only(
        left: ScreenHelper.screenWidth(context, 35),
        bottom: ScreenHelper.screenWidth(context, 15.0),
      ),
      content: Text(
          'تمت الاضافة بنجاح',
          style: Theme
              .of(context)
              .textTheme
              .headline5
              .copyWith(
            fontSize: 30,
            color: Colors.grey,
          )
      ),
    );
  }
}

Widget _buildTextFieldWithText(
    {TextEditingController controller,
      String title,
      bool last = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.center,

  //  mainAxisSize: MainAxisSize.min,
    //crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        title ,
        // style: Theme.of(context).textTheme.headline5,
      ),
//      SizedBox(
//        height: 10,
//      ),
      OutlinedTextField(
        controller: controller,
        textInputAction: last ? TextInputAction.done : TextInputAction.next,
      ),
    ],
  );
}