
import 'package:anurag_app/utils/utility.dart';
import 'package:anurag_app/view/home/bottom_bar.dart';
import 'package:flutter/material.dart';
 

class BookingSuccess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBgColor,
      body: WillPopScope(
        onWillPop: () async {
          bool backStatus = onWillPop();
          if (backStatus) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BottomBar(index: 1),
              ),
            );
          }
          return false;
        },
        child: Padding(
          padding: const EdgeInsets.all(fixPadding * 2.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/booking-success.png',
                width: double.infinity,
              ),
              height20Space,
              height20Space,
              Text(
                'Booking Successfully!',
                style: black16MediumTextStyle,
              ),
              height20Space,
              Text(
                'Thank you for your booking! Our representative will contact you shortly.',
                style: grey14MediumTextStyle,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 60.0),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BottomBar(index: 1),
                    ),
                  );
                },
                borderRadius: BorderRadius.circular(10.0),
                child: Container(
                  height: 50.0,
                  width: double.infinity,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: primaryColor,
                  ),
                  child: Text(
                    'Okay!',
                    style: white14BoldTextStyle,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  onWillPop() {
    return true;
  }
}
