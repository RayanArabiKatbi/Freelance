import 'package:changehorizonsfreelancer/helpers/screen_helper.dart';
import 'package:changehorizonsfreelancer/ui/widgets/custom_scaffold.dart';
import 'package:changehorizonsfreelancer/ui/widgets/outlined_textfield.dart';
import 'package:changehorizonsfreelancer/ui/widgets/save_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../constants.dart';

class CheckNumber extends StatefulWidget {
  @override
  _CheckNumberState createState() => _CheckNumberState();
}

class _CheckNumberState extends State<CheckNumber> {
  TextEditingController _numberNameController = TextEditingController();


  @override
  void dispose() {
    _numberNameController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: 'تعديل رقم الهاتف',
      onBack: (){},
      child: Container(
       //  width: double.infinity,
         height: ScreenHelper.screenHeight(context, 100),
      padding: EdgeInsets.all(kMainPadding),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
     //       mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            _buildTextFieldWithText(
                controller: _numberNameController, title: 'رقم الهاتف الجديد'),
            Text(
              'يجب التحقق من رقمك قبل أن تتمكن من تغيير رقمك المسجل.بالنقر على "تحقق من رقم الهاتف".فإنك توافق الشروط والأحكام'
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: SaveButton(
                width: double.minPositive,
                title: 'تحقق من رقم الهاتف',
                onPressed: () {},
              ),
            ),
          ],
        )
      ),
    );
  }
}
Widget _buildTextFieldWithText(
    {TextEditingController controller,
      String title,
      bool last = false,
      }) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[

      Text(
        title,
      //  style: Theme.of(context).textTheme.headline5,
      ),
      SizedBox(
        height: 10,
      ),

          OutlinedTextField(
            controller: controller,
            textInputAction: last ? TextInputAction.done : TextInputAction.next,

          ),
      _ButtonBar(),
        ],

  );
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