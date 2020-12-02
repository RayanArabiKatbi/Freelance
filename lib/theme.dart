import 'package:changehorizonsfreelancer/constants.dart';
import 'package:flutter/material.dart';

ThemeData standardTheme = ThemeData(
  primarySwatch: Colors.deepPurple,
  primaryColor: kMiddleColor,
  accentColor: kRightColor,
  fontFamily: 'Tajawal',
  textTheme: ThemeData.light().textTheme.copyWith(
        headline6: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w700,
          fontSize: 20,
        ),
        subtitle2: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 15,
        ),
        headline5: TextStyle(
          color: Colors.black54,
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
        subtitle1: TextStyle(
          color: Colors.black38,
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
        button: TextStyle(
          color: Colors.black54,
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
        bodyText2: TextStyle(
          color: Colors.black54,
          fontWeight: FontWeight.normal,
          fontSize: 12,
        ),
        bodyText1: TextStyle(
          color: Colors.black54,
          fontWeight: FontWeight.normal,
          fontSize: 10,
        ),
        headline4: TextStyle(
          color: Colors.black54,
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
        headline3: TextStyle(
          color: Colors.black54,
          fontWeight: FontWeight.bold,
          fontSize: 25,
        ),
      ),
);
