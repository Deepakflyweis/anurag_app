import 'dart:io';

import 'package:anurag_app/utils/utility.dart';
import 'package:anurag_app/view/user/login_gmail_page.dart';
import 'package:anurag_app/view/user/otp_screen.dart';
 
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:page_transition/page_transition.dart';

class LoginMobileScreen extends StatefulWidget {
  const LoginMobileScreen({super.key});

  @override
  State<LoginMobileScreen> createState() => _LoginMobileScreenState();
}

class _LoginMobileScreenState extends State<LoginMobileScreen> {
  late DateTime currentBackPressTime;

  String phoneNumber = '';

  late String phoneIsoCode;

  final TextEditingController controller = TextEditingController();

  String initialCountry = 'IN';

  PhoneNumber number = PhoneNumber(isoCode: 'IN');

  void onPhoneNumberChange(
      String number, String internationalizedPhoneNumber, String isoCode) {
    setState(() {
      phoneNumber = number;
      phoneIsoCode = isoCode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyBack,
      body: WillPopScope(
        child: ListView(
          children: [
            SizedBox(height: 80.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/icon.png',
                  width: 150.0,
                  height: 150.0,
                  fit: BoxFit.fill,
                ),
                SizedBox(height: 50.0),
                Text(
                  'Signin with phone number',
                  style: grey14BoldTextStyle,
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Container(
                    padding: EdgeInsets.only(left: fixPadding * 2.0),
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4.0,
                          spreadRadius: 1.0,
                          color: blackColor.withOpacity(0.25),
                        ),
                      ],
                    ),
                    child: InternationalPhoneNumberInput(
                      onInputChanged: (value) {},
                      textStyle: black14RegularTextStyle,
                      //autoValidate: false,
                      selectorTextStyle: black16MediumTextStyle,
                      initialValue: number,
                      textFieldController: controller,
                      inputBorder: InputBorder.none,
                      inputDecoration: InputDecoration(
                        //contentPadding: EdgeInsets.only(left: 0.0),
                        hintText: 'Phone Number',
                        hintStyle: black14RegularTextStyle,
                        border: InputBorder.none,
                      ),
                      //selectorType: PhoneInputSelectorType.DIALOG,
                    ),
                  ),
                ),
                heightSpace,
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: fixPadding * 2.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.rightToLeft,
                          child: OtpScreen(),
                        ),
                      );
                    },
                    borderRadius: BorderRadius.circular(10.0),
                    child: Container(
                      width: double.infinity,
                      height: 40.0,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.blue.shade900,
                      ),
                      child: Text(
                        'Continue',
                        style: white14BoldTextStyle,
                      ),
                    ),
                  ),
                ),
                heightSpace,
                Text(
                  'We’ll send otp for verification',
                  style: black14MediumTextStyle,
                ),
                height20Space,
                height20Space,
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: fixPadding * 2.0),
                  child: Container(
                    width: double.infinity,
                    height: 50.0,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: greyColor),
                      color: whiteColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/google.png',
                          width: 37.0,
                          height: 37.0,
                          fit: BoxFit.cover,
                        ),
                        width20Space,
                        Text(
                          'Log in with Google',
                          style: black14MediumTextStyle,
                        ),
                      ],
                    ),
                  ),
                ),
                
                 height20Space,
                
                 Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: fixPadding * 2.0),
                  child: Container(
                    width: double.infinity,
                    height: 50.0,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color(0xFF3B5998),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/facebook.png',
                          width: 37.0,
                          height: 37.0,
                          fit: BoxFit.cover,
                        ),
                        width20Space,
                        Text(
                          'Log in with Facebook',
                          style: white14MediumTextStyle,
                        ),
                      ],
                    ),
                  ),
                ),
              
                height20Space,
                  Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                           "Already have an account? ",
                            style: TextStyle(
                              fontSize: 15,
                              color: blackColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                          
                                  Get.to(() => LoginGmail());
                            },
                            child: const Text(
                              """ Sign in""",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.blue,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                   height20Space,
              ],
            ),
          ],
        ),
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
}
