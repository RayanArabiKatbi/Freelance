import 'dart:math';
import 'dart:ui' as ui;

import 'package:changehorizonsfreelancer/ui/screens/settings_tasks/second_info_screen.dart';
import 'package:changehorizonsfreelancer/ui/widgets/outlined_textfield.dart';
import 'package:changehorizonsfreelancer/ui/widgets/save_button.dart';
import 'package:changehorizonsfreelancer/ui/widgets/skip_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../constants.dart';

class SecondFillForm extends StatefulWidget {
  static const String routeName = '/second fill form';

  @override
  _SecondFillFormState createState() => _SecondFillFormState();
}

class _SecondFillFormState extends State<SecondFillForm> {
  TextEditingController _briefController;
  String _image;
  List<String> projects = ['', '', ''];

  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    _briefController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _briefController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: ui.TextDirection.rtl,
      child: SafeArea(
        top: false,
        child: Scaffold(
          body: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                final barHeight = max(MediaQuery.of(context).size.height,
                    MediaQuery.of(context).size.width) *
                    0.4;
                return Stack(
                  children: <Widget>[
                    Positioned(
                      right: 20.0,
                      top: MediaQuery.of(context).padding.top + 18,
                      child: Center(
                        child: InkResponse(
                          onTap: () {},
                          child: Icon(
                            Icons.arrow_back,
                            color: kMiddleColor,
                          ),
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      child: Stack(
                        children: [
                          Positioned(
                            right: 18,
                            top: barHeight -
                                MediaQuery.of(context).padding.top -
                                kInteractiveButtonSize / 2,
                            child: _buildRoundFloatingButton(),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Material(
                                color: Colors.transparent,
                                child: Container(
                                  height: barHeight,
                                  width: double.infinity,
                                  child: _buildImageOrPlaceholder(),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(
                                  horizontal: kSmallButtonSize + kMainPadding,
                                ),
                                child: Form(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      SizedBox(
                                        height: kMainPadding + kSmallButtonSize / 2,
                                      ),
                                      _buildHeader(header: 'نبذة عنك'),
                                      OutlinedTextField(
                                        controller: _briefController,
                                        maxChars: 1000,
                                        expanded: true,
                                      ),
                                      SizedBox(
                                        height: 12.0,
                                      ),
                                      _buildHeader(header: 'الأعمال'),
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children:
                                        List(projects.length).map((index) {
                                          return Container(
                                            width: kInteractiveButtonSize,
                                            child: AspectRatio(
                                              aspectRatio: 1,
                                              child: RaisedButton(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(8.0),
                                                ),
                                                elevation: 1.0,
                                                color: kMinusButtonBackground,
                                                onPressed: () {},
                                                child: Icon(
                                                  Icons.cloud_upload,
                                                  color: kRightColor,
                                                ),
                                              ),
                                            ),
                                          );
                                        }).toList(),
                                      ),
                                      SizedBox(
                                        height: 24.0,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(kInPadding) +
                                            EdgeInsets.symmetric(
                                                vertical: kMainPadding),
                                        child: Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: SaveButton(
                                                onPressed: () {},
                                              ),
                                            ),
                                            SizedBox(
                                              width: kMainPadding,
                                            ),
                                            Expanded(
                                              child: SkipButton(
                                                onPressed: () {
                                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondInfoScreen()));
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ].reversed.toList(),
                      ),
                    ),
                  ].reversed.toList(),
                );
              }),
        ),
      ),
    );
  }

  Widget _buildHeader({@required String header}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kMainPadding - kInPadding),
      child: Text(
        header,
        style: Theme.of(context).textTheme.headline,
      ),
    );
  }

  Widget _buildImageOrPlaceholder() {
    if (_image != null) {
      return Image.network(
        _image,
        fit: BoxFit.cover,
      );
    } else {
      return Container(
        color: Colors.grey.withAlpha(50),
        child: Icon(
          Icons.photo_camera,
          color: Colors.grey,
          size: kInteractiveButtonSize,
        ),
      );
    }
  }

  Widget _buildRoundFloatingButton() {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        height: kInteractiveButtonSize,
        width: kInteractiveButtonSize,
        child: Material(
          elevation: 10,
          shape: CircleBorder(),
          child: InkWell(
            onTap: () {},
            child: ClipOval(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Stack(
                children: <Widget>[
                  Positioned.fill(
                    child: Image.network(
                      'https://qomra.pro/wp-content/uploads/2018/11/placeholder-1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: kInteractiveButtonSize * 0.6,
                    child: Container(
                      height: kInteractiveButtonSize * 0.4,
                      width: kInteractiveButtonSize,
                      color: Colors.white,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Icon(
                            Icons.photo_camera,
                            color: Colors.grey,
                          ),
                          Expanded(
                            child: FittedBox(
                              child: Text(
                                'Edit',
                                style:
                                DefaultTextStyle.of(context).style.copyWith(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
