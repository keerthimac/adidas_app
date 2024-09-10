import 'package:flutter/material.dart';

class CustomNavigators {
  static void goTo(BuildContext context, Widget widget) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => widget,
        ));
  }
  static void goAndReplace(BuildContext context, Widget widget) {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => widget,
        ));
  }
  static void goBack(BuildContext context, Widget widget) {
    Navigator.pop(
        context,
        MaterialPageRoute(
          builder: (context) => widget,
        ));
  }
}
