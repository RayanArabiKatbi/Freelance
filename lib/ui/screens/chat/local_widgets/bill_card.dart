import 'package:changehorizonsfreelancer/constants.dart';
import 'package:changehorizonsfreelancer/ui/widgets/save_button.dart';
import 'package:flutter/material.dart';

class BillCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: kRightColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: <Widget>[
          Text(
            'وافق ساره على عرض من محمد',
            style: TextStyle(color: kRightColor, fontWeight: FontWeight.bold),
          ),
          Text('ستبدأ تنفيذ المهمه حينما يدفع العميل'),
          SaveButton(
              title: 'عرض تفاصيل الفاتوره',
              backgroundColor: kRightColor,
              onPressed: () {})
        ],
      ),
    );
  }
}
