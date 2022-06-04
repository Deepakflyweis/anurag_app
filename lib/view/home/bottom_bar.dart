import 'dart:io';

import 'package:anurag_app/utils/utility.dart';
import 'package:anurag_app/view/home/menu_screen/chat_list.dart';
import 'package:anurag_app/view/home/menu_screen/homepage.dart';
import 'package:anurag_app/view/home/menu_screen/my_booking.dart';
import 'package:anurag_app/view/home/menu_screen/profile.dart';
import 'package:anurag_app/view/home/menu_screen/urban_home_cash.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class BottomBar extends StatefulWidget {
  final int index;

  const BottomBar({required this.index,super.key,});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar>  {
  late DateTime currentBackPressTime;
  late int currentIndex;
  
  @override
  void initState() {
    super.initState();

    if (widget.index != null) {
      setState(() {
        currentIndex = widget.index;
      });
    } else {
      setState(() {
        currentIndex = 1;
      });
    }
  }

  changeIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        elevation: 1.0,
        child: Container(
          width: double.infinity, 
         color: whiteColor,
          padding: EdgeInsets.symmetric(horizontal: fixPadding * 2.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              bottomBarItem(Icons.home, 1),
              bottomBarItem(Icons.date_range, 2),
              bottomBarItem(Icons.chat, 3),
              bottomBarItem(Icons.account_balance_wallet, 4),
              bottomBarItem(Icons.person, 5),
            ],
          ),
        ),
      ),
      body: WillPopScope(
        child: (currentIndex == 1)
            ? HomePage()
            : (currentIndex == 2)
                ? MyBooking()
                : (currentIndex == 3)
                    ? ChatList()
                    : (currentIndex == 4)
                        ? UrbanHomeCash()
                        : Profile(),
        onWillPop: () async {
          bool backStatus = onWillPop();
          if (backStatus) {
            exit(0);
          }
          return false;
        },
      ),
    );
  }

  onWillPop() {
    DateTime now = DateTime.now();
    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime) > Duration(seconds: 2)) {
      currentBackPressTime = now;
      Fluttertoast.showToast(
        msg: 'Press Back Once Again to Exit.',
        backgroundColor: Colors.black,
        textColor: whiteColor,
      );
      return false;
    } else {
      return true;
    }
  }

  bottomBarItem(icon, index) {
    return IconButton(
      icon: Icon(
        icon,
        size: 24.0,
        color: (index == currentIndex) ? blackColor : greyColor,
      ),
      onPressed: () => changeIndex(index),
    );
  }
}
