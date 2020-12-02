

import 'package:changehorizonsfreelancer/helpers/screen_helper.dart';
import 'package:changehorizonsfreelancer/ui/screens/requests/underway_requests.dart';
import 'package:changehorizonsfreelancer/ui/widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'awaiting_choosing.dart';
import 'completed_requests.dart';

class DefaultRequestsBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: CustomScaffold(
          scrolls: false,
          onBack: () {},
          title: 'طلباتي',
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                    top: ScreenHelper.screenHeight(context, 30)),
                child: TabBar(
                  indicatorPadding: EdgeInsets.all(0.0),
                  indicatorColor: kMiddleColor,
                  labelColor:kMiddleColor,
                  unselectedLabelColor:kMiddleColor,
                  tabs: <Widget>[
                    Text(
                      'بانتظار الموافقة',
                      style: Theme.of(context).textTheme.headline6.copyWith(
                            color:kMiddleColor,

                            fontSize: 14,
                          ),
                    ),
                    Text(
                      'قيد التنفيذ',
                      style: Theme.of(context).textTheme.headline6.copyWith(
                            color:kMiddleColor,
                            fontSize: 15,
                          ),
                    ),
                    Text(
                      'مكتملة',
                      style: Theme.of(context).textTheme.headline6.copyWith(
                            color:kMiddleColor,
                            fontSize: 15,
                          ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: <Widget>[
                    AwaitingChoosing(),
                    UnderwayRequests(),
                    CompletedRequests(),
                  ],
                ),
              )
            ],
          ),
        ),
      );
  }
}
