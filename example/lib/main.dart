import 'package:flutter/material.dart';
import 'package:responsive_design_helper/responsive_design_helper.dart';

void main() => runApp(const ResponsiveExampleApp());

class ResponsiveExampleApp extends StatelessWidget {
  const ResponsiveExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Design Helper Example',
      home: Scaffold(
        appBar: AppBar(title: const Text('Responsive Example')),
        body: Responsive.responsiveWidget(
          context: context,
          mobile: Container(
            color: Colors.blue,
            child: const Center(
                child: Text('Mobile View', style: TextStyle(fontSize: 20))),
          ),
          tablet: Container(
            color: Colors.green,
            child: const Center(
                child: Text('Tablet View', style: TextStyle(fontSize: 20))),
          ),
          desktop: Container(
            color: Colors.red,
            child: const Center(
                child: Text('Desktop View', style: TextStyle(fontSize: 20))),
          ),
        ),
      ),
    );
  }
}
