import 'package:carinfo/core/app_theme/common/app_theme.dart';
import 'package:carinfo/view/boarding_view.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const BoardingView(),
    theme: getApplicationTheme(),
  ));
}
