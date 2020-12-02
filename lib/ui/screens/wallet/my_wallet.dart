 
import 'package:changehorizonsfreelancer/ui/widgets/save_button.dart';
import 'package:changehorizonsfreelancer/ui/widgets/skip_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:changehorizonsfreelancer/ui/widgets/custom_scaffold.dart';
import 'package:changehorizonsfreelancer/helpers/screen_helper.dart';
import '../../../constants.dart';

class MyWallet extends StatefulWidget {
  @override
  _MyWalletState createState() => _MyWalletState();
}

class _MyWalletState extends State<MyWallet> {
  final double _totalCredit = 300.0;
  final double _suspendedCredit = 200.0;

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: "محفظتي",
      onBack: () {},
      child: Container(
        width: double.infinity,
        padding:
            EdgeInsets.all(ScreenHelper.screenWidth(context, kMainPadding)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _creditBox(title: "الرصيد الكلي", value: "\$ $_totalCredit"),
            _creditBox(title: "الرصيد المعلق", value: "\$ $_suspendedCredit"),
            _creditBox(
                title: "الرصيد المتاح",
                value: "\$ ${_totalCredit - _suspendedCredit}"),
            _creditBox(
                title: "الرصيد القابل للسحب",
                value: "\$ ${_totalCredit - _suspendedCredit}"),
            Padding(
              padding: EdgeInsets.all(kInPadding),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: SaveButton(
                      title: "سحب الرصيد",
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(
                    width: kMainPadding,
                  ),
                  Expanded(
                    child: SkipButton(
                      title: "شحن الرصيد",
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _creditBox({String title, String value}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kMainPadding),
      child: Card(
        color: Colors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            8.0,
          ),
        ),
        elevation: 0.0,
        child: Padding(
          padding: const EdgeInsets.all(kMainPadding),
          child: Column(
            children: <Widget>[
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .subtitle
                    .copyWith(fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: ScreenHelper.screenHeight(context, 10),
              ),
              Text(
                value,
                style: Theme.of(context)
                    .textTheme
                    .title
                    .copyWith(color: kMiddleColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
