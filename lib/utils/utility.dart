import 'package:flutter/material.dart';

const Color primaryColor = Color.fromARGB(255, 51, 20, 189);

const Color whiteColor = Colors.white;
const Color blackColor = Colors.black;
const Color greyColor = Color(0xFF808080);
const greyBack =  Color.fromARGB(255, 241, 241, 241);
const Color redColor = Color(0xFFFF0000);
const Color orangeColor = Color(0xFFFFA500);
const Color greenColor = Color(0xFF006400);
const Color scaffoldBgColor = Color(0xFFF2F4F6);

Gradient primarygradient = const LinearGradient(
    colors: [Color(0xffFF0000), Color(0xffF19035)],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight);

Gradient primarygradientInverted = const LinearGradient(
    colors: [Color(0xffFF0000), Color(0xffF19035)],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight);

const double fixPadding = 10.0;

const SizedBox heightSpace = SizedBox(height: 10.0);

const SizedBox height5Space = SizedBox(height: 5.0);

const SizedBox height20Space = SizedBox(height: 20.0);

const SizedBox widthSpace = SizedBox(width: 10.0);

const SizedBox width5Space = SizedBox(width: 5.0);

const SizedBox width20Space = SizedBox(width: 20.0);

TextStyle appBarTextStyle = const TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.bold,
  fontFamily: 'Poppins',
  color: blackColor,
);

TextStyle appBarWhiteTextStyle = const TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.bold,
  fontFamily: 'Poppins',
  color: whiteColor,
);

TextStyle black12RegularTextStyle = const TextStyle(
  fontSize: 12.0,
  color: blackColor,
  fontFamily: 'Poppins',
);

TextStyle black14RegularTextStyle = const TextStyle(
  fontSize: 14.0,
  color: blackColor,
  fontFamily: 'Poppins',
);

TextStyle black14BoldTextStyle = const TextStyle(
  fontSize: 14.0,
  color: blackColor,
  fontFamily: 'Poppins',
  fontWeight: FontWeight.bold,
);

TextStyle black12MediumTextStyle = const TextStyle(
  fontSize: 12.0,
  color: blackColor,
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w500,
);

TextStyle black14MediumTextStyle = const TextStyle(
  fontSize: 14.0,
  color: blackColor,
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w500,
);

TextStyle black10MediumTextStyle = const TextStyle(
  fontSize: 10.0,
  color: blackColor,
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w500,
);

TextStyle black16MediumTextStyle = const TextStyle(
  fontSize: 16.0,
  color: blackColor,
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w500,
);

TextStyle black18MediumTextStyle = const TextStyle(
  fontSize: 18.0,
  color: blackColor,
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w500,
);

TextStyle black16SemiBoldTextStyle = const TextStyle(
  fontSize: 16.0,
  color: blackColor,
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w600,
);

TextStyle black16BoldTextStyle = const TextStyle(
  fontSize: 16.0,
  color: blackColor,
  fontFamily: 'Poppins',
  fontWeight: FontWeight.bold,
);

TextStyle black18BoldTextStyle = const TextStyle(
  fontSize: 18.0,
  color: blackColor,fontFamily: 'Poppins',
  fontWeight: FontWeight.bold,
);

TextStyle white12MediumTextStyle = const TextStyle(
  fontSize: 12.0,
  color: whiteColor,fontFamily: 'Poppins',
  fontWeight: FontWeight.w500,
);

TextStyle white14MediumTextStyle = const TextStyle(
  fontSize: 14.0,
  color: whiteColor,fontFamily: 'Poppins',
  fontWeight: FontWeight.w500,
);

TextStyle white16MediumTextStyle = const TextStyle(
  fontSize: 16.0,
  color: whiteColor,fontFamily: 'Poppins',
  fontWeight: FontWeight.w500,
);

TextStyle white18MediumTextStyle = const TextStyle(
  fontSize: 18.0,
  color: whiteColor,fontFamily: 'Poppins',
  fontWeight: FontWeight.w500,
);

TextStyle white48MediumTextStyle = const TextStyle(
  fontSize: 48.0,
  color: whiteColor,fontFamily: 'Poppins',
  fontWeight: FontWeight.w500,
);

TextStyle white12SemiBoldTextStyle = const TextStyle(
  fontSize: 12.0,
  color: whiteColor,fontFamily: 'Poppins',
  fontWeight: FontWeight.w600,
);

TextStyle white14BoldTextStyle = const TextStyle(
  fontSize: 14.0,
  color: whiteColor,fontFamily: 'Poppins',
  fontWeight: FontWeight.bold,
);

TextStyle white18BoldTextStyle = const TextStyle(
  fontSize: 18.0,
  color: whiteColor,fontFamily: 'Poppins',
  fontWeight: FontWeight.bold,
);

TextStyle white36BoldTextStyle = const TextStyle(
  fontSize: 36.0,
  color: whiteColor,fontFamily: 'Poppins',
  fontWeight: FontWeight.bold,
);

TextStyle primaryColor12RegularTextStyle = const TextStyle(
  fontSize: 12.0,fontFamily: 'Poppins',
  color: primaryColor,
);

TextStyle primaryColor14RegularTextStyle = const TextStyle(
  fontSize: 14.0,fontFamily: 'Poppins',
  color: primaryColor,
);

TextStyle primaryColor14MediumTextStyle = const TextStyle(
  fontSize: 14.0,
  color: primaryColor,fontFamily: 'Poppins',
  fontWeight: FontWeight.w500,
);

TextStyle primaryColor16MediumTextStyle = const TextStyle(
  fontSize: 16.0,
  color: primaryColor,fontFamily: 'Poppins',
  fontWeight: FontWeight.w500,
);

TextStyle primaryColor16BoldTextStyle = const TextStyle(
  fontSize: 16.0,
  color: primaryColor,fontFamily: 'Poppins',
  fontWeight: FontWeight.bold,
);

TextStyle primaryColor18BoldTextStyle = const TextStyle(
  fontSize: 18.0,
  color: primaryColor,fontFamily: 'Poppins',
  fontWeight: FontWeight.bold,
);

TextStyle primaryColor22BoldTextStyle = const TextStyle(
  fontSize: 22.0,
  color: primaryColor,fontFamily: 'Poppins',
  fontWeight: FontWeight.bold,
);

TextStyle grey12RegularTextStyle = const TextStyle(
  fontSize: 12.0,
  color: greyColor,
  fontFamily: 'Poppins',
);

TextStyle grey14RegularTextStyle = const TextStyle(
  fontSize: 14.0,
  color: greyColor,
  fontFamily: 'Poppins',
);

TextStyle grey12MediumTextStyle = const TextStyle(
  fontSize: 12.0,
  color: greyColor,
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w500,
);

TextStyle grey12MediumItalicTextStyle = const TextStyle(
  fontSize: 14.0,
  color: greyColor,
  fontWeight: FontWeight.w500,
  fontFamily: 'Poppins',
  fontStyle: FontStyle.italic,
);

TextStyle grey14MediumTextStyle = const TextStyle(
  fontSize: 14.0,fontFamily: 'Poppins',
  color: greyColor,
  fontWeight: FontWeight.w500,
);

TextStyle grey16MediumTextStyle = const TextStyle(
  fontSize: 16.0,
  color: greyColor,fontFamily: 'Poppins',
  fontWeight: FontWeight.w500,
);

TextStyle grey12BoldTextStyle = const TextStyle(
  fontSize: 12.0,
  color: greyColor,fontFamily: 'Poppins',
  fontWeight: FontWeight.bold,
);

TextStyle grey14BoldTextStyle = const TextStyle(
  fontSize: 14.0,
  color: greyColor,fontFamily: 'Poppins',
  fontWeight: FontWeight.bold,
);

TextStyle grey16BoldTextStyle = const TextStyle(
  fontSize: 16.0,
  color: greyColor,fontFamily: 'Poppins',
  fontWeight: FontWeight.bold,
);

TextStyle grey18BoldTextStyle = const TextStyle(
  fontSize: 18.0,
  color: greyColor,fontFamily: 'Poppins',
  fontWeight: FontWeight.bold,
);

TextStyle grey20BoldTextStyle = const TextStyle(
  fontSize: 20.0,
  color: greyColor,fontFamily: 'Poppins',
  fontWeight: FontWeight.bold,
);

TextStyle green14MediumTextStyle = const TextStyle(
  fontSize: 14.0,
  color: greenColor,fontFamily: 'Poppins',
  fontWeight: FontWeight.w500,
);

TextStyle red14MediumTextStyle = const TextStyle(
  fontSize: 14.0,
  color: redColor,fontFamily: 'Poppins',
  fontWeight: FontWeight.w500,
);
