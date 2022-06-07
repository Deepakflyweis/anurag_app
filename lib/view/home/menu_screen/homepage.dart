

import 'package:anurag_app/utils/utility.dart';
import 'package:anurag_app/view/home/bottom_bar.dart';
import 'package:anurag_app/view/home/service/service_prvider_list.dart';
import 'package:anurag_app/view/home/service/service_screen.dart';
import 'package:anurag_app/view/home/service/service_view_detail.dart';
import 'package:anurag_app/view/search/search.dart';
import 'package:anurag_app/widget/column_builder.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:page_transition/page_transition.dart';
 

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
    List serviceList = [
    {
      'title': 'Cleaning',
      'image': 'assets/images/clean.png',
       
    },
    {
      'title': 'Plumber',
      'image': 'assets/images/plumber.png',
       
    },
    {
      'title': 'Electrician',
      'image': 'assets/images/elec.png',
       
    },
    {
      'title': 'Painter',
      'image': 'assets/images/painter.png',
       
    },
    {
      'title': 'Yoga Train',
      'image': 'assets/images/yoga.png',
      
    },
    {
      'title': 'Beautician',
      'image': 'assets/images/beauty.png',
      
    }
  ];

  List bestOfferList = [
    {
      'title': 'Salon at home for Women',
      'image': 'assets/images/img1.png',
      'subtitle': 'Upto 50% Off'
    },
    {
      'title': 'Salon for Men',
      'image': 'assets/images/img2.png',
      'subtitle': 'Upto 50% Off'
    },  
    {
      'title': 'Bathroom Cleaning',
      'image': 'assets/images/img3.png',
      'subtitle': 'Free Fan Cleaning & More'
    },
      
    // {
    //   'title': 'House Painters',
    //   'image': 'assets/images/img1.png',
    //   'subtitle': 'Upto 15% Off'
    // }
  ];

  List pamperList = [    
    {
      'title': 'Bathroom Cleaning',
      'image': 'assets/images/img3.png',
      'subtitle': 'Free Fan Cleaning & More'
    },
    {
      'title': 'Salon at home for Women',
      'image': 'assets/images/img1.png',
      'subtitle': 'Upto 50% Off'
    },    
  ];

  List categoryList = [    
    {
      'title': 'Home Painters',
      'image': 'assets/images/img4.png',
      'subtitle': 'Upto 50% Off'
    },
    {
      'title': 'Salon at home for Women',
      'image': 'assets/images/img1.png',
      'subtitle': 'Upto 50% Off'
    },    
  ];

  List trendingList = [    
    {
      'title': 'Salon at home for Women',
      'image': 'assets/images/img1.png',
      'subtitle': 'Upto 50% Off'
    },    
    {
      'title': 'Salon for Men',
      'image': 'assets/images/img2.png',
      'subtitle': 'Upto 50% Off'
    },  
    {
      'title': 'Bathroom Cleaning',
      'image': 'assets/images/img3.png',
      'subtitle': 'Free Fan Cleaning & More'
    },  
  ];

  List budgetList = [    
    {
      'title': 'Salon at home for Women',
      'image': 'assets/images/img1.png',
      'subtitle': 'Upto 50% Off'
       
    },    
    {
      'title': 'Salon for Men',
      'image': 'assets/images/img2.png',
      'subtitle': 'Upto 50% Off'
    },  
    {
      'title': 'Bathroom Cleaning',
      'image': 'assets/images/img3.png',
      'subtitle': 'Free Fan Cleaning & More'
    },  
  ];

  List reviewList = [
    {
      'name': 'Natasha',
      'review':
          'Sofia is as amazing as her reviews. Very through job, takes the time to get into the details. Will be booking again.',
      'service': 'Home Cleaning'
    },
    {
      'name': 'Menka',
      'review':
          'Hotel style cleaning. Beyond perfection. Will definitely hope he accepts future bookings.',
      'service': 'Home Cleaning'
    },
    {
      'name': 'Justine',
      'review':
          'Michael was very nice and provided a very efficient service. Highly recommended.',
      'service': 'Handyman'
    },
    {
      'name': 'Chaitali',
      'review':
          'On time and accurate. Clean work. John is cooperative and polite. Will be happy to have them again for next service.',
      'service': 'Home Cleaning'
    },
    {
      'name': 'Claire',
      'review':
          'Carla did a fantastic job. Cleaning our place and was very easy to communicate with.',
      'service': 'Home Cleaning'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: greyBack,
        body: ListView(
          children: [
            userAndLocation(),
            searchBar(),
            SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "assets/images/add.png", width: double.infinity,
              height: 130,fit: BoxFit.fill,),
            ),
            
            selectService(),
            todaysOfferBanner(),
            Padding(
              padding: const EdgeInsets.fromLTRB(
            fixPadding * 2.0, 8.0, fixPadding * 2.0, fixPadding * 1.0),
              child: Text(
              "OFFERS YOU CAN'T MISS",
              style: black16BoldTextStyle,
             ),
            ),
            bestOffers(),

            Padding(
              padding: const EdgeInsets.fromLTRB(
              fixPadding * 2.0, 8.0, fixPadding * 2.0, fixPadding * 1.0),
              child: Text(
              "Pamper Yourself".toUpperCase(),
              style: black16BoldTextStyle,
             ),
            ),
            pamperYourself(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "assets/images/add2.png", width: double.infinity,
              height: 130,fit: BoxFit.fill,),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(
              fixPadding * 2.0, 8.0, fixPadding * 2.0, fixPadding * 1.0),
              child: Text(
              "Top categories".toUpperCase(),
              style: black16BoldTextStyle,
             ),
            ),
            topCategory(),

            Padding(
              padding: const EdgeInsets.fromLTRB(
              fixPadding * 2.0, 8.0, fixPadding * 2.0, fixPadding * 1.0),
              child: Text(
              "Trending Now".toUpperCase(),
              style: black16BoldTextStyle,
             ),
            ),

            trendinNow(),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "assets/images/add.png", width: double.infinity,
              height: 130,fit: BoxFit.fill,),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(
              fixPadding * 2.0, 8.0, fixPadding * 2.0, fixPadding * 1.0),
              child: Text(
              "budgeted curations".toUpperCase(),
              style: black16BoldTextStyle,
             ),
            ),
            budgetCuration(),

             Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "assets/images/add.png", width: double.infinity,
              height: 130,fit: BoxFit.fill,),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "assets/images/add2.png", width: double.infinity,
              height: 130,fit: BoxFit.fill,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "assets/images/add2.png", width: double.infinity,
              height: 130,fit: BoxFit.fill,),
            ),

            // customerReviews(),
          ],
        ),
      ),
    );
  }

  userAndLocation() {
    return Container(
      padding: EdgeInsets.all(fixPadding * 2.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.location_on,
                size: 24.0,
                color: greyColor,
              ),
              width5Space,
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Location',
                    style: TextStyle(
                      color: greyColor.withOpacity(0.6),
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  height5Space,
                  Text(
                    'New York',
                    style: grey14MediumTextStyle,
                  ),
                ],
              ),
            ],
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BottomBar(
                    index: 5,
                  ),
                ),
              );
            },
            borderRadius: BorderRadius.circular(30.0),
            child: Container(
              width: 60.0,
              height: 60.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                // image: const DecorationImage(
                //   image:  AssetImage('assets/user/user_5.jpg'),
                //   fit: BoxFit.cover,+
                // ),
                 
              ),
              child: Image.asset('assets/user/user_5.jpg',fit: BoxFit.fill,),
            ),
          ),
        ],
      ),
    );
  }

  searchBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: fixPadding * 2.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            PageTransition(
              type: PageTransitionType.bottomToTop,
              child: Search(),
            ),
          );
        },
        borderRadius: BorderRadius.circular(10.0),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: whiteColor,
            boxShadow: [
              BoxShadow(
                blurRadius: 4.0,
                spreadRadius: 1.0,
                color: blackColor.withOpacity(0.25),
              ),
            ],
          ),
          padding: EdgeInsets.fromLTRB(
              fixPadding * 2.0, fixPadding, fixPadding * 2.0, fixPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.search,
                size: 24.0,
                color: blackColor,
              ),
              widthSpace,
              Text(
                'Search for a service',
                style: grey14MediumTextStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }

  selectService() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Padding(
          padding: const EdgeInsets.all(fixPadding * 2.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Select Service',
                style: black16BoldTextStyle,
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  'See all',
                  style: red14MediumTextStyle,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 170.0,           
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: serviceList.length,
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) {
                final item = serviceList[index];
              return Padding(
                 padding: EdgeInsets.only(left: 10),
                // padding: (index != serviceList.length - 1)
                //     ? const EdgeInsets.only(left: fixPadding * 2.0)
                //     : const EdgeInsets.symmetric(horizontal: fixPadding * 2.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 110,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(width: 0.8,color: blackColor)
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.rightToLeft,
                              child: ServiceList(),
                            ),
                          );
                        },                        
                        child:Image.asset(
                                item['image'],                              
                                fit: BoxFit.fill,),                      
                         
                      ),
                    ),

                    Center(
                      child: Text(
                             item['title'],
                             style: black14MediumTextStyle,
                             maxLines: 2,
                           ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  todaysOfferBanner() {
    return Padding(
      padding: const EdgeInsets.all(fixPadding * 1.0),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(10.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.asset('assets/images/add.png'),
        ),
      ),
    );
  }

  bestOffers() {
    return SizedBox(
      height: 250,
      child: ListView.builder(  
           shrinkWrap: true,
           scrollDirection: Axis.horizontal,            
           itemCount: bestOfferList.length,
           itemBuilder: (context, index) {
             final item = bestOfferList[index];
             return Padding(
               padding: const EdgeInsets.all(10.0),
               child: Card(
                 elevation: 2,
                 child: Container(    
                        height: 250,
                        width: 300,                     
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: whiteColor,
                        
                        ),           
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       InkWell(
                         onTap: () {
                           Get.to(() => ServiceViewDetails());
                                  // Navigator.push(
                                  //   context,
                                  //   PageTransition(
                                  //     type: PageTransitionType.rightToLeft,
                                  //     child: ServiceProviderList(),
                                  //   ),
                                  // );
                                },
                         child: Image.asset(
                           item['image'],
                           width: double.infinity, 
                           height: 180.0,
                           fit: BoxFit.fill,
                           ),
                          ),
                        Text(
                               item['title'],
                               style: black12MediumTextStyle,
                             ),
                             height5Space,
                        Text(
                               item['subtitle'],
                               style: grey12MediumTextStyle,
                             ),                 
                     ],
                   ),
                 ),
               ),
             );
           },
         ), 
    );
  }

  
  
  pamperYourself(){
    return SizedBox(
      height: 250,
      child: ListView.builder(  
           shrinkWrap: true,
           scrollDirection: Axis.horizontal,            
           itemCount: pamperList.length,
           itemBuilder: (context, index) {
             final item = pamperList[index];
             return Padding(
               padding: const EdgeInsets.all(10.0),
               child: Card(
                 elevation: 2,
                 child: Container(    
                        height: 250,
                        width: 300,                     
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: whiteColor,                       
                        ),           
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       InkWell(
                         onTap: () {
                           Get.to(() => ServiceViewDetails());
                                  // Navigator.push(
                                  //   context,
                                  //   PageTransition(
                                  //     type: PageTransitionType.rightToLeft,
                                  //     child: ServiceProviderList(),
                                  //   ),
                                  // );
                                },
                         child: Image.asset(
                           item['image'],
                           width: double.infinity, 
                           height: 180.0,
                           fit: BoxFit.fill,
                           ),
                          ),
                        Text(
                               item['title'],
                               style: black12MediumTextStyle,
                             ),
                             height5Space,
                        Text(
                               item['subtitle'],
                               style: grey12MediumTextStyle,
                             ),                 
                     ],
                   ),
                 ),
               ),
             );
           },
         ), 
    );  
  }

  topCategory(){
    return SizedBox(
      height: 250,
      child: ListView.builder(  
           shrinkWrap: true,
           scrollDirection: Axis.horizontal,            
           itemCount: categoryList.length,
           itemBuilder: (context, index) {
             final item = categoryList[index];
             return Padding(
               padding: const EdgeInsets.all(10.0),
               child: Card(
                 elevation: 2,
                 child: Container(    
                        height: 250,
                        width: 300,                     
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: whiteColor,                       
                        ),           
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       InkWell(
                         onTap: () {

                           Get.to(() => ServiceViewDetails());

                                  // Navigator.push(
                                  //   context,
                                  //   PageTransition(
                                  //     type: PageTransitionType.rightToLeft,
                                  //     child: ServiceProviderList(),
                                  //   ),
                                  // );
                                },
                         child: Image.asset(
                           item['image'],
                           width: double.infinity, 
                           height: 180.0,
                           fit: BoxFit.fill,
                           ),
                          ),
                        Text(
                               item['title'],
                               style: black12MediumTextStyle,
                             ),
                             height5Space,
                        Text(
                               item['subtitle'],
                               style: grey12MediumTextStyle,
                             ),                 
                     ],
                   ),
                 ),
               ),
             );
           },
         ), 
    );  
  } 
  
  trendinNow(){
    return SizedBox(
      height: 250,
      child: ListView.builder(  
           shrinkWrap: true,
           scrollDirection: Axis.horizontal,            
           itemCount: trendingList.length,
           itemBuilder: (context, index) {
             final item = trendingList[index];
             return Padding(
               padding: const EdgeInsets.all(10.0),
               child: Card(
                 elevation: 2,
                 child: Container(    
                        height: 250,
                        width: 300,                     
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: whiteColor,                       
                        ),           
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       InkWell(
                         onTap: () {
                           Get.to(() => ServiceViewDetails());
                           
                                  // Navigator.push(
                                  //   context,
                                  //   PageTransition(
                                  //     type: PageTransitionType.rightToLeft,
                                  //     child: ServiceProviderList(),
                                  //   ),
                                  // );
                                },
                         child: Image.asset(
                           item['image'],
                           width: double.infinity, 
                           height: 180.0,
                           fit: BoxFit.fill,
                           ),
                          ),
                        Text(
                               item['title'],
                               style: black12MediumTextStyle,
                             ),
                             height5Space,
                        Text(
                               item['subtitle'],
                               style: grey12MediumTextStyle,
                             ),                 
                     ],
                   ),
                 ),
               ),
             );
           },
         ), 
    );  
  } 
  
  budgetCuration(){
    return SizedBox(
      height: 250,
      child: ListView.builder(  
           shrinkWrap: true,
           scrollDirection: Axis.horizontal,            
           itemCount: budgetList.length,
           itemBuilder: (context, index) {
             final item = budgetList[index];
             return Padding(
               padding: const EdgeInsets.all(10.0),
               child: Card(
                 elevation: 2,
                 child: Container(    
                        height: 250,
                        width: 300,                     
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: whiteColor,                       
                        ),           
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       InkWell(
                         onTap: () {

                           Get.to(() => ServiceViewDetails());
                           
                                  // Navigator.push(
                                  //   context,
                                  //   PageTransition(
                                  //     type: PageTransitionType.rightToLeft,
                                  //     child: ServiceProviderList(),
                                  //   ),
                                  // );
                                },
                         child: Image.asset(
                           item['image'],
                           width: double.infinity, 
                           height: 180.0,
                           fit: BoxFit.fill,
                           ),
                          ),
                        Text(
                               item['title'],
                               style: black12MediumTextStyle,
                             ),
                             height5Space,
                        Text(
                               item['subtitle'],
                               style: grey12MediumTextStyle,
                             ),                 
                     ],
                   ),
                 ),
               ),
             );
           },
         ), 
    );  
  } 
  
  

  customerReviews() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: fixPadding * 2.0),
          child: Text(
            'Customer reviews',
            style: black16BoldTextStyle,
          ),
        ),
        height20Space,
        SizedBox(
          height: 130.0,
          width: double.infinity,
          child: ListView.builder(
            itemCount: reviewList.length,
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              final item = reviewList[index];
              return Padding(
                padding: (index != reviewList.length - 1)
                    ? const EdgeInsets.only(left: fixPadding * 2.0)
                    : const EdgeInsets.symmetric(horizontal: fixPadding * 2.0),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Container(
                    padding: EdgeInsets.all(fixPadding),
                    height: double.infinity,
                    width: 245.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: const Color(0xFFDCDFD8),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4.0,
                          spreadRadius: 1.0,
                          color: blackColor.withOpacity(0.25),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item['service'],
                          style: black12RegularTextStyle,
                        ),
                        Text(
                          item['review'],
                          style: black12MediumTextStyle,
                        ),
                        Text(
                          item['name'],
                          style: black14BoldTextStyle,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        height20Space,
      
      ],
    );
  }
}
