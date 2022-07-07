import 'package:flutter/cupertino.dart';

class SizeUtils {
  static double height(context, value) {
    return MediaQuery.of(context).size.height / 100 * value;
  }

  static double width(context, value) {
    return MediaQuery.of(context).size.height / 100 * value;
  }
}
