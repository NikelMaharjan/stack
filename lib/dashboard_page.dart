import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:search_page/constants/color.dart';
import 'package:search_page/views/home_page.dart';
import 'package:search_page/views/profile_page.dart';


class DashBoardPage extends StatelessWidget {
  const DashBoardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: PersistentTabView(
        context,
        screens: const [
          HomePage(),
          ProfilePage(),
        ],
        items: _navBarsItems(),
        navBarStyle: NavBarStyle.style1,




      ),
    );
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(

        icon:  const Icon(CupertinoIcons.home),
        title: ("Home"),
        activeColorPrimary: AppColor.blueColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon:  const Icon(CupertinoIcons.profile_circled),
        title: ("Profile"),
        activeColorPrimary: AppColor.blueColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),


    ];
  }
}
