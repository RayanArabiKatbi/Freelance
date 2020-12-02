 
import 'package:changehorizonsfreelancer/helpers/screen_helper.dart';
import 'package:changehorizonsfreelancer/ui/widgets/custom_scaffold.dart';
import 'package:changehorizonsfreelancer/ui/widgets/rating_bar_static.dart';
import 'package:changehorizonsfreelancer/ui/widgets/save_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class FreelancerReview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        onBack: () {},
        scrolls: false,
        title: 'تقييم الخدمة',
        child: Padding(
          padding: EdgeInsets.only(
            right: ScreenHelper.screenWidth(context, 20),
          ),
          child: SingleChildScrollView(child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: ScreenHelper.screenHeight(context, 25),
              ),
              RowToReview(
                  text: 'الاحترافية بالتعامل', factorRow: 55.0, factor: 15.0),
              RowToReview(
                  text: 'التواصل والمتابعة', factorRow: 60.0, factor: 15.0),
              RowToReview(
                  text: 'جودة العمل المسلم', factorRow: 47.0, factor: 15.0),
              RowToReview(
                  text: 'الخبرة بمجال المشروع', factorRow: 32.0, factor: 15.0),
              RowToReview(
                  text: 'التسليم بالموعد', factorRow: 75.0, factor: 25.0),
              Divider(thickness: 0.5),
              Padding(
                padding: EdgeInsets.only(
                  top: ScreenHelper.screenHeight(context, 25.0),
                ),
                child: Text(
                  'أضف ردك علي التقييم',
                  style: Theme.of(context).textTheme.headline6.copyWith(
                        color: Colors.grey.shade700,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: ScreenHelper.screenWidth(context, 5.0),
                  left: ScreenHelper.screenWidth(context, 25.0),
                  top: ScreenHelper.screenHeight(context, 10),
                ),
                child: TextField(
                    decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(
                    top: ScreenHelper.screenHeight(context, 55.0),
                    right: ScreenHelper.screenWidth(context, 10.0),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.blueAccent, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                )),
              ),
              SizedBox(
                height: ScreenHelper.screenHeight(context, 15),
              ),
              Center(
                child: SaveButton(
                  textColor: Colors.white70,
                  onPressed: () {},
                  width: 130,
                  height: 40,
                  title: 'أضف ردك',
                ),
              )
            ],
          )),
        ));
  }
}

class RowToReview extends StatelessWidget {
  final String text;
  final double factorRow;
  final double factor;
  RowToReview(
      {@required this.text, @required this.factor, @required this.factorRow});
  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Text(
                  text,
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      .copyWith(color: Colors.grey.shade500, fontSize: 17),
                ),
              ),
              SizedBox(
                width: ScreenHelper.screenWidth(context, factorRow),
              ),
              Expanded(
                flex: 1,
                child: RatingBarStatic(
                  rate: 5.0,
                  max: 5,
                  height: 30,
                ),
              ),
            ],
          ),
          SizedBox(
            height: ScreenHelper.screenHeight(context, factor),
          ),
        ],
      );
  }
}
