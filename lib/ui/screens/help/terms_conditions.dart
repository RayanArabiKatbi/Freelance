
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:changehorizonsfreelancer/ui/widgets/custom_scaffold.dart';
import 'package:changehorizonsfreelancer/helpers/screen_helper.dart';
import '../../../constants.dart';

class Terms extends StatefulWidget {
  @override
  _TermsState createState() => _TermsState();
}

class _TermsState extends State<Terms> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: "الشروط والأحكام",
      onBack: () {},
      child: Column(
        children: <Widget>[
          _section(
              title: "عنوان",
              bodyText:
                  "هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص.\nبينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي."),
          _section(
              title: "عنوان",
              bodyText:
                  "هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص.\nبينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي."),
        ],
      ),
    );
  }

  Widget _section({@required String title, @required String bodyText}) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: ScreenHelper.screenHeight(context, 50),
          ),
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  .copyWith(color: kMiddleColor),
            ),
          ),
          Divider(
            height: 1,
            thickness: 1,
          ),
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.only(left: 25, right: 25, top: 20, bottom: 10),
            child: Text(bodyText,
                style: Theme.of(context)
                    .textTheme
                    .bodyText2
                    .copyWith(fontSize: ScreenHelper.screenFont(context, 14))),
          ),
        ],
      ),
    );
  }
}
