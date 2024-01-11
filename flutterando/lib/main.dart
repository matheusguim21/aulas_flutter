import 'package:flutter/material.dart';
import 'package:flutterando/home_controller.dart';
import 'package:flutterando/home_page.dart';

void main(List<String> args) {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeController(
          child: HomePage(),
        )));
  }
}
