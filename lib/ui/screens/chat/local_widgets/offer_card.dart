import 'package:changehorizonsfreelancer/ui/widgets/save_button.dart';
import 'package:changehorizonsfreelancer/ui/widgets/skip_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../constants.dart';

class OfferCard extends StatelessWidget {
  final bool client;

  OfferCard(this.client);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: kRightColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Text(
            'محمد يرغب فى عرض خدمه عليك',
            style: TextStyle(color: kRightColor, fontWeight: FontWeight.bold),
          ),
          Text('بعنوان : تصميم تطبيق الكتروني'),
          Text(
              'سيبدأ تنفيذها من تاريخ الدفع حسب المده المحدده وستكلفك 200 ريال'),
          client
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      child: SkipButton(
                        title: 'الغاء',
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        color: kRightColor,
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Expanded(
                      child: SaveButton(
                        title: 'قبول',
                        onPressed: () {},
                        backgroundColor: kRightColor,
                      ),
                    ),
                  ],
                )
              : Text(
                  'بانتظار موافقه العميل...',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
        ],
      ),
    );
  }
}
