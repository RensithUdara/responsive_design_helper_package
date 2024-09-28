import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:responsive_design_helper/responsive_design_helper.dart';

void main() {
  testWidgets('Responsive isMobile should return true for small screens',
      (WidgetTester tester) async {
    // Define a small screen size for mobile.
    final testWidget = MediaQuery(
      data: const MediaQueryData(size: Size(400, 800)),
      child: Builder(
        builder: (context) {
          // Assert that the screen size is considered mobile.
          expect(Responsive.isMobile(context), true);
          expect(Responsive.isTablet(context), false);
          expect(Responsive.isDesktop(context), false);
          return Container();
        },
      ),
    );

    // Pump the widget to perform the test.
    await tester.pumpWidget(MaterialApp(home: testWidget));
  });

  testWidgets('Responsive isTablet should return true for medium screens',
      (WidgetTester tester) async {
    // Define a medium screen size for tablet.
    final testWidget = MediaQuery(
      data: const MediaQueryData(size: Size(800, 1200)),
      child: Builder(
        builder: (context) {
          // Assert that the screen size is considered tablet.
          expect(Responsive.isMobile(context), false);
          expect(Responsive.isTablet(context), true);
          expect(Responsive.isDesktop(context), false);
          return Container();
        },
      ),
    );

    // Pump the widget to perform the test.
    await tester.pumpWidget(MaterialApp(home: testWidget));
  });

  testWidgets('Responsive isDesktop should return true for large screens',
      (WidgetTester tester) async {
    // Define a large screen size for desktop.
    final testWidget = MediaQuery(
      data: const MediaQueryData(size: Size(1300, 800)),
      child: Builder(
        builder: (context) {
          // Assert that the screen size is considered desktop.
          expect(Responsive.isMobile(context), false);
          expect(Responsive.isTablet(context), false);
          expect(Responsive.isDesktop(context), true);
          return Container();
        },
      ),
    );

    // Pump the widget to perform the test.
    await tester.pumpWidget(MaterialApp(home: testWidget));
  });
}
