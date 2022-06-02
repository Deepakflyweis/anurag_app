import 'package:anurag_app/view/user/login_gmail_page.dart';
import 'package:anurag_app/view/user/login_mobile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'anurag_app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(     
        primarySwatch: Colors.blue,
      ),
      home:   LoginMobileScreen(),
    );
  }
}

 