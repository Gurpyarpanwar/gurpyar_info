import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart'; // For kIsWeb

class CustomDeviceType {
  // Screen size thresholds
  static const double mobileBreakpoint = 600.0;
  static const double tabletBreakpoint = 1200.0;

  static bool isMobile(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return size.width < mobileBreakpoint;
  }

  static bool isTablet(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return size.width >= mobileBreakpoint && size.width < tabletBreakpoint;
  }

  static bool isWeb(BuildContext context) {
    return kIsWeb;
  }

  static bool isSmallerThanMobile(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return size.width < mobileBreakpoint;
  }

  static bool isGreaterThanMobile(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return size.width >= mobileBreakpoint;
  }

  static bool isGreaterThanTablet(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return size.width >= tabletBreakpoint;
  }

  static bool isBetweenMobileAndTablet(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return size.width >= mobileBreakpoint && size.width < tabletBreakpoint;
  }

  static DeviceScreenType getDeviceType(BuildContext context) {
    if (isWeb(context)) {
      return DeviceScreenType.web;
    } else if (isTablet(context)) {
      return DeviceScreenType.tablet;
    } else if (isMobile(context)) {
      return DeviceScreenType.mobile;
    } else {
      return DeviceScreenType.unknown;
    }
  }

  static double getSmallText(BuildContext context) {
    return _getTextSize(context, 12.0, 16.0, 18.0);

  }

  static double getMediumText(BuildContext context) {
    return _getTextSize(context, 14.0, 18.0, 22.0);
  }

  static double getLargeText(BuildContext context) {
    return _getTextSize(context, 22.0, 25.0, 27.0);
  }

  // A helper method to get the text size based on screen width
  static double _getTextSize(BuildContext context, double mobileSize,
      double tabletSize, double webSize) {
    if (isBetweenMobileAndTablet(context) || isMobile(context)) {
      return mobileSize;
    } else if (isTablet(context)) {
      return tabletSize;
    } else {
      return webSize;
    }
  }
}

enum DeviceScreenType {
  mobile,
  tablet,
  web,
  unknown, // For cases where the device type is not identified
}
