import 'package:anurag_app/utils/utility.dart';
import 'package:anurag_app/view/home/service/select_date.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class AddToCart extends StatefulWidget {
  const AddToCart({super.key});

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: whiteColor,
          elevation: 2,
          title: Text("Cart",style: black14BoldTextStyle),
          leading: IconButton(
                  color: whiteColor.withOpacity(0.8),
                  icon: Icon(
                    Icons.arrow_back,
                    color: blackColor,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
        ),
        body: SizedBox(
          width: double.infinity,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: 2,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.all(10),
                child: Card(
                  elevation: 2,
                  child: Container(
                    height: 250,
                    width: double.infinity,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.asset(
                                 "assets/images/img4.png",
                                width: 100.0,
                                height: 100.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            widthSpace,
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                     "Bathroom cleaning",
                                    style: black14MediumTextStyle,
                                  ),
                                  heightSpace,
                                  Text(
                                     "₹1200",
                                    style: black14RegularTextStyle,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("upto 50% Off",style: grey14BoldTextStyle,)),
                        SizedBox(height: 20,),

                        Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has unchanged.",
                                  style: black14MediumTextStyle,maxLines: 4,overflow: TextOverflow.ellipsis,
                        )
                        ],
                      ),                   
                    
                  ),
                ),

                );
            },
          ),
        ),
        bottomNavigationBar: InkWell(
                            onTap: () {
                              Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.rightToLeft,
                                      child: SelectDateTime(),
                                    ),
                                  );
                            },
                            child: Container(
                              width: double.infinity,
                              height: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.circular(1)),
                              child:  Text("CheckOut".toUpperCase(),
                                  style: TextStyle(
                                      color: whiteColor,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                         
      ),

    );
     
  }
}

