import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sanitas/shared/components/text_widget.dart';

defaultAppbar ({
  required Color backgroundColorAppbar,
  required Color systemNavigationBarColor,
  Brightness statusBarIconBrightness = Brightness.light,
  Brightness systemNavigationBarIconBrightness = Brightness.light,
  String? title,
  double? fontSize,
  Color? fontColor,
  FontWeight? fontWeight,
  String? fontFamily,
  bool centerTitle = false
}) => AppBar(
  backgroundColor: backgroundColorAppbar,
  elevation: 0,
  surfaceTintColor: Colors.transparent,
  systemOverlayStyle: SystemUiOverlayStyle(
    statusBarIconBrightness: statusBarIconBrightness,
    statusBarColor: Colors.transparent,
    systemNavigationBarIconBrightness: systemNavigationBarIconBrightness,
    systemNavigationBarColor: systemNavigationBarColor,
  ),
  title: DefaultText(
    text: title,
    fontSize: fontSize,
    fontColor:  fontColor,
    fontWeight: fontWeight,
    fontFamily: fontFamily,
  ),
  centerTitle: centerTitle,
);