


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:search_page/constants/color.dart';
import 'package:search_page/dashboard_page.dart';
import 'package:search_page/views/design.dart';
import 'package:search_page/views/home_page.dart';

void main() {

  SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle(
      statusBarColor: AppColor.blueColor,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark

  ));



  runApp(const Home());



}


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashBoardPage(),

    );
  }
}
