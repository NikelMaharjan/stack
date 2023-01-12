


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:search_page/dashboard_page.dart';
import 'package:search_page/views/design.dart';
import 'package:search_page/views/home_page.dart';

void main() {

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(0xff4870CF),

      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark

  ));



  runApp(Home());



}


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: DashBoardPage(),
      ),
    );
  }
}
