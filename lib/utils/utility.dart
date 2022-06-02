import 'package:flutter/material.dart';

const Color primaryColor = Color(0xffFF0000);
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
  color: blackColor,
);

TextStyle appBarWhiteTextStyle = const TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.bold,
  color: whiteColor,
);

TextStyle black12RegularTextStyle = const TextStyle(
  fontSize: 12.0,
  color: blackColor,
);

TextStyle black14RegularTextStyle = const TextStyle(
  fontSize: 14.0,
  color: blackColor,
);

TextStyle black14BoldTextStyle = const TextStyle(
  fontSize: 14.0,
  color: blackColor,
  fontWeight: FontWeight.bold,
);

TextStyle black12MediumTextStyle = const TextStyle(
  fontSize: 12.0,
  color: blackColor,
  fontWeight: FontWeight.w500,
);

TextStyle black14MediumTextStyle = const TextStyle(
  fontSize: 14.0,
  color: blackColor,
  fontWeight: FontWeight.w500,
);

TextStyle black10MediumTextStyle = const TextStyle(
  fontSize: 10.0,
  color: blackColor,
  fontWeight: FontWeight.w500,
);

TextStyle black16MediumTextStyle = const TextStyle(
  fontSize: 16.0,
  color: blackColor,
  fontWeight: FontWeight.w500,
);

TextStyle black18MediumTextStyle = const TextStyle(
  fontSize: 18.0,
  color: blackColor,
  fontWeight: FontWeight.w500,
);

TextStyle black16SemiBoldTextStyle = const TextStyle(
  fontSize: 16.0,
  color: blackColor,
  fontWeight: FontWeight.w600,
);

TextStyle black16BoldTextStyle = const TextStyle(
  fontSize: 16.0,
  color: blackColor,
  fontWeight: FontWeight.bold,
);

TextStyle black18BoldTextStyle = const TextStyle(
  fontSize: 18.0,
  color: blackColor,
  fontWeight: FontWeight.bold,
);

TextStyle white12MediumTextStyle = const TextStyle(
  fontSize: 12.0,
  color: whiteColor,
  fontWeight: FontWeight.w500,
);

TextStyle white14MediumTextStyle = const TextStyle(
  fontSize: 14.0,
  color: whiteColor,
  fontWeight: FontWeight.w500,
);

TextStyle white16MediumTextStyle = const TextStyle(
  fontSize: 16.0,
  color: whiteColor,
  fontWeight: FontWeight.w500,
);

TextStyle white18MediumTextStyle = const TextStyle(
  fontSize: 18.0,
  color: whiteColor,
  fontWeight: FontWeight.w500,
);

TextStyle white48MediumTextStyle = const TextStyle(
  fontSize: 48.0,
  color: whiteColor,
  fontWeight: FontWeight.w500,
);

TextStyle white12SemiBoldTextStyle = const TextStyle(
  fontSize: 12.0,
  color: whiteColor,
  fontWeight: FontWeight.w600,
);

TextStyle white14BoldTextStyle = const TextStyle(
  fontSize: 14.0,
  color: whiteColor,
  fontWeight: FontWeight.bold,
);

TextStyle white18BoldTextStyle = const TextStyle(
  fontSize: 18.0,
  color: whiteColor,
  fontWeight: FontWeight.bold,
);

TextStyle white36BoldTextStyle = const TextStyle(
  fontSize: 36.0,
  color: whiteColor,
  fontWeight: FontWeight.bold,
);

TextStyle primaryColor12RegularTextStyle = const TextStyle(
  fontSize: 12.0,
  color: primaryColor,
);

TextStyle primaryColor14RegularTextStyle = const TextStyle(
  fontSize: 14.0,
  color: primaryColor,
);

TextStyle primaryColor14MediumTextStyle = const TextStyle(
  fontSize: 14.0,
  color: primaryColor,
  fontWeight: FontWeight.w500,
);

TextStyle primaryColor16MediumTextStyle = const TextStyle(
  fontSize: 16.0,
  color: primaryColor,
  fontWeight: FontWeight.w500,
);

TextStyle primaryColor16BoldTextStyle = const TextStyle(
  fontSize: 16.0,
  color: primaryColor,
  fontWeight: FontWeight.bold,
);

TextStyle primaryColor18BoldTextStyle = const TextStyle(
  fontSize: 18.0,
  color: primaryColor,
  fontWeight: FontWeight.bold,
);

TextStyle primaryColor22BoldTextStyle = const TextStyle(
  fontSize: 22.0,
  color: primaryColor,
  fontWeight: FontWeight.bold,
);

TextStyle grey12RegularTextStyle = const TextStyle(
  fontSize: 12.0,
  color: greyColor,
);

TextStyle grey14RegularTextStyle = const TextStyle(
  fontSize: 14.0,
  color: greyColor,
);

TextStyle grey12MediumTextStyle = const TextStyle(
  fontSize: 12.0,
  color: greyColor,
  fontWeight: FontWeight.w500,
);

TextStyle grey12MediumItalicTextStyle = const TextStyle(
  fontSize: 14.0,
  color: greyColor,
  fontWeight: FontWeight.w500,
  fontStyle: FontStyle.italic,
);

TextStyle grey14MediumTextStyle = const TextStyle(
  fontSize: 14.0,
  color: greyColor,
  fontWeight: FontWeight.w500,
);

TextStyle grey16MediumTextStyle = const TextStyle(
  fontSize: 16.0,
  color: greyColor,
  fontWeight: FontWeight.w500,
);

TextStyle grey12BoldTextStyle = const TextStyle(
  fontSize: 12.0,
  color: greyColor,
  fontWeight: FontWeight.bold,
);

TextStyle grey14BoldTextStyle = const TextStyle(
  fontSize: 14.0,
  color: greyColor,
  fontWeight: FontWeight.bold,
);

TextStyle grey16BoldTextStyle = const TextStyle(
  fontSize: 16.0,
  color: greyColor,
  fontWeight: FontWeight.bold,
);

TextStyle grey18BoldTextStyle = const TextStyle(
  fontSize: 18.0,
  color: greyColor,
  fontWeight: FontWeight.bold,
);

TextStyle grey20BoldTextStyle = const TextStyle(
  fontSize: 20.0,
  color: greyColor,
  fontWeight: FontWeight.bold,
);

TextStyle green14MediumTextStyle = const TextStyle(
  fontSize: 14.0,
  color: greenColor,
  fontWeight: FontWeight.w500,
);

TextStyle red14MediumTextStyle = const TextStyle(
  fontSize: 14.0,
  color: redColor,
  fontWeight: FontWeight.w500,
);