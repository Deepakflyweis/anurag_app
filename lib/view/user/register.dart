
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
    return SafeArea(
      child: Scaffold(
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
                    Icons.arrow_back_ios_new_sharp,
                    color: blackColor,
                  ),
                )
              ],
            ),
            SizedBox(height: 70.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Image.asset(
                //   'assets/images/icon.png',
                //   width: 150.0,
                //   height: 150.0,
                //   fit: BoxFit.fill,
                // ),
                SizedBox(height: 50.0),
                
                const Text(
                        """Register your  
Account.""",
                        style: TextStyle(
                          fontSize: 36,
                          color: Color(0xff333333),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 3,
                        width: 70,
                        color: Colors.blue,),               
                
                Padding(
                  padding: EdgeInsets.only(right: 20.0, left: 20.0,top: 20),
                  child: Container(
                    decoration: BoxDecoration(                   
                      borderRadius: BorderRadius.circular(10.0),
                     
                    ),
                    child: TextField(
                      style: black14MediumTextStyle,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                         enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: greyColor,width: 1)),
                        contentPadding: EdgeInsets.only(left: 10.0),
                        hintText: 'Username',
                        hintStyle: grey12MediumTextStyle,
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
                         enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: greyColor,width: 1)),
                        contentPadding: EdgeInsets.only(left: 10.0),
                        hintText: 'Email',
                        hintStyle: grey12MediumTextStyle,
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
                        enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: greyColor,width: 1)),
                        contentPadding: EdgeInsets.only(left: 10.0),
                        hintText: 'Password',
                        hintStyle: grey12MediumTextStyle,
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
                         enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: greyColor,width: 1)),
                        contentPadding: EdgeInsets.only(left: 10.0),
                        hintText: 'Confirm Password',
                        hintStyle: grey12MediumTextStyle,
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
                        'Create Account',
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
      ),
    );
  }
}
