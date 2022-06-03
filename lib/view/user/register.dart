
import 'package:anurag_app/utils/utility.dart';
import 'package:anurag_app/view/home/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyBack,
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(
                  Icons.arrow_back,
                  color: blackColor,
                ),
              )
            ],
          ),
          SizedBox(height: 70.0),
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
                'Register your account',
                style: grey14BoldTextStyle,
              ),
              height20Space,
              Padding(
                padding: EdgeInsets.only(right: 20.0, left: 20.0),
                child: Container(
                  decoration: BoxDecoration(                   
                    borderRadius: BorderRadius.circular(10.0),
                   
                  ),
                  child: TextField(
                    style: black14MediumTextStyle,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                       enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: greyColor,width: 0.5)),
                      contentPadding: EdgeInsets.only(left: 20.0),
                      hintText: 'Username',
                      hintStyle: black14MediumTextStyle,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              height20Space,
              Padding(
                padding: EdgeInsets.only(right: 20.0, left: 20.0),
                child: Container(
                  decoration: BoxDecoration(                    
                    borderRadius: BorderRadius.circular(10.0), 
                  ),
                  child: TextField(
                    style: black14MediumTextStyle,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                       enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: greyColor,width: 0.8)),
                      contentPadding: EdgeInsets.only(left: 20.0),
                      hintText: 'Email',
                      hintStyle: black14MediumTextStyle,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              height20Space,
              Padding(
                padding: EdgeInsets.only(right: 20.0, left: 20.0),
                child: Container(
                  decoration: BoxDecoration(                    
                    borderRadius: BorderRadius.circular(10.0), 
                  ),
                  child: TextField(
                    style: black14MediumTextStyle,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: greyColor,width: 0.5)),
                      contentPadding: EdgeInsets.only(left: 10.0),
                      hintText: 'Password',
                      hintStyle: black14MediumTextStyle,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              height20Space,
              Padding(
                padding: EdgeInsets.only(right: 20.0, left: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    
                    borderRadius: BorderRadius.circular(10.0), 
                  ),
                  child: TextField(
                    style: black14MediumTextStyle,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: InputDecoration(
                       enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: greyColor,width: 0.5)),
                      contentPadding: EdgeInsets.only(left: 20.0),
                      hintText: 'Confirm Password',
                      hintStyle: black14MediumTextStyle,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              height20Space,
              height20Space,
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: fixPadding * 2.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: BottomBar( index: 1, )
                      ),
                    );
                  },
                  borderRadius: BorderRadius.circular(6.0),
                  child: Container(
                    width: double.infinity,
                    height: 50.0,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: primaryColor,
                    ),
                    child: Text(
                      'Continue',
                      style: white14BoldTextStyle,
                    ),
                  ),
                ),
              ),
              height20Space,
            ],
          ),
        ],
      ),
    );
  }
}
