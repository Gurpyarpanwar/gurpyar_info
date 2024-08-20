
import 'package:flutter/material.dart';

/// general getter

class Getters {
  Getters._();
  static final navigatorKey = GlobalKey<NavigatorState>();

  static EdgeInsetsGeometry get homePagePadding =>
      const EdgeInsets.symmetric(horizontal: 20.0);

  static double get homePagePaddingNumber => 20.0;
  static String get defaultLang => 'mn';

  static double get loginPaddingNumber => 25.0;


  static DateTime get now => DateTime.now();



}
