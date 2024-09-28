import 'package:flutter/material.dart';

/// A class to help with responsive design, providing breakpoints for screen sizes.
class Responsive {
  /// Get the screen width from the given BuildContext.
  static double screenWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;

  /// Get the screen height from the given BuildContext.
  static double screenHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;

  /// Check if the screen width is considered mobile.
  static bool isMobile(BuildContext context) => screenWidth(context) < 600;

  /// Check if the screen width is considered tablet.
  static bool isTablet(BuildContext context) =>
      screenWidth(context) >= 600 && screenWidth(context) < 1200;

  /// Check if the screen width is considered desktop.
  static bool isDesktop(BuildContext context) => screenWidth(context) >= 1200;

  /// Get a value that scales proportionately with screen width.
  static double responsiveWidth(BuildContext context, double designWidth) {
    return screenWidth(context) *
        (designWidth / 375); // Assuming 375 is the base design width.
  }

  /// Get a value that scales proportionately with screen height.
  static double responsiveHeight(BuildContext context, double designHeight) {
    return screenHeight(context) *
        (designHeight / 812); // Assuming 812 is the base design height.
  }

  /// A method to return different widgets based on screen size.
  static Widget responsiveWidget({
    required BuildContext context,
    required Widget mobile,
    Widget? tablet,
    Widget? desktop,
  }) {
    if (isDesktop(context)) {
      return desktop ?? tablet ?? mobile;
    } else if (isTablet(context)) {
      return tablet ?? mobile;
    } else {
      return mobile;
    }
  }
}
