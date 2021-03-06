
 import 'package:anurag_app/utils/utility.dart';
import 'package:anurag_app/view/home/service/select_date.dart';
import 'package:anurag_app/view/home/service/view_all_review.dart';
import 'package:anurag_app/widget/column_builder.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class ServiceViewDetails extends StatefulWidget {
  const ServiceViewDetails({super.key});

  @override
  State<ServiceViewDetails> createState() => _ServiceViewDetailsState();
}

class _ServiceViewDetailsState extends State<ServiceViewDetails> {
   bool favorite = false;

 

  List reviewList = [
    {
      'name': 'John Doe',
      'image': 'assets/user/user_1.jpg',
      'review': 'Best service ever seen.',
      'rating': 5
    },
    {
      'name': 'Ellison Perry',
      'image': 'assets/user/user_3.jpg',
      'review': 'Best service ever seen.',
      'rating': 5
    },
    {
      'name': 'Amara Smith',
      'image': 'assets/user/user_4.jpg',
      'review': 'Decent work. Speed are amazing.',
      'rating': 4
    },
    {
      'name': 'David Hayden',
      'image': 'assets/user/user_7.jpg',
      'review': 'Nice experience. Book again.',
      'rating': 5
    },
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: scaffoldBgColor,
      bottomNavigationBar: Material(
        elevation: 1.0,
        child: InkWell(
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
            height: 50.0,
            width: double.infinity,
            color: primaryColor,
            alignment: Alignment.center,
            child: Text(
              'Add to cart',
              style: white18BoldTextStyle,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                // expandedHeight: 358.0,
                pinned: true,
                forceElevated: true,
                automaticallyImplyLeading: false,
                backgroundColor: whiteColor,
                elevation: 0.0,
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
                title: Text("Details",
                    style: TextStyle(
                        color: blackColor, fontWeight: FontWeight.bold)),               
              ),
            ];
          },
          body: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Container(
                width: width,
                height: 200,
                color: Colors.blue.shade600,
                
              ),

              nameDescription(),
              jobsRateRating(),
              
              
              reviews(),
            ],
          ),
        ),
      ),
    );
  }

  nameDescription() {
    return Container(
      padding: EdgeInsets.all(fixPadding * 2.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Full Home cleaning',
            style: black18BoldTextStyle,
          ),
          Text(
            'upto 50% Off',
            style: grey14MediumTextStyle,
          ),
          heightSpace,
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Faucibus enim tellus ut mauris tristique ut odio massa. Vestibulum egestas fringilla et orci. Magna eget sed eu vel vitae mauris eget. Pulvinar maecenas aliquet scelerisque aliquam a iaculis.',
            style: black14MediumTextStyle,
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }

  jobsRateRating() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: fixPadding * 2.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Rate',
                style: grey12BoldTextStyle,
              ),
              height5Space,
              Text(
                '\$16/hr',
                style: black14BoldTextStyle,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Rating',
                style: grey12BoldTextStyle,
              ),
              height5Space,
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star_rate,
                    size: 20.0,
                    color: orangeColor,
                  ),
                  Text(
                    '4.0',
                    style: black14BoldTextStyle,
                  ),
                   
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  // serviceInclude() {
  //   return Column(
  //     mainAxisAlignment: MainAxisAlignment.start,
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       Padding(
  //         padding: const EdgeInsets.fromLTRB(
  //             fixPadding * 2.0, fixPadding * 2.0, fixPadding * 2.0, 0.0),
  //         child: Text(
  //           'What does this service include?',
  //           style: black16BoldTextStyle,
  //         ),
  //       ),
  //       heightSpace,
  //       ColumnBuilder(
  //         itemCount: serviceIncludeList.length,
  //         itemBuilder: (context, index) {
  //           final item = serviceIncludeList[index];
  //           return Container(
  //             padding: EdgeInsets.fromLTRB(
  //                 fixPadding * 2.0, fixPadding, fixPadding * 2.0, 0.0),
  //             child: Column(
  //               mainAxisAlignment: MainAxisAlignment.start,
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               children: [
  //                 (index % 2 == 0)
  //                     ? Row(
  //                         mainAxisAlignment: MainAxisAlignment.start,
  //                         crossAxisAlignment: CrossAxisAlignment.start,
  //                         children: [
  //                           ClipRRect(
  //                             borderRadius: BorderRadius.circular(10.0),
  //                             child: Image.asset(
  //                               item['image'],
  //                               width: 100.0,
  //                               height: 100.0,
  //                               fit: BoxFit.cover,
  //                             ),
  //                           ),
  //                           widthSpace,
  //                           Expanded(
  //                             child: Column(
  //                               mainAxisAlignment: MainAxisAlignment.start,
  //                               crossAxisAlignment: CrossAxisAlignment.start,
  //                               children: [
  //                                 Text(
  //                                   item['title'],
  //                                   style: black14MediumTextStyle,
  //                                 ),
  //                                 heightSpace,
  //                                 Text(
  //                                   item['subtitle'],
  //                                   style: black14RegularTextStyle,
  //                                 ),
  //                               ],
  //                             ),
  //                           ),
  //                         ],
  //                       )
  //                     : Row(
  //                         mainAxisAlignment: MainAxisAlignment.end,
  //                         crossAxisAlignment: CrossAxisAlignment.start,
  //                         children: [
  //                           Expanded(
  //                             child: Column(
  //                               mainAxisAlignment: MainAxisAlignment.start,
  //                               crossAxisAlignment: CrossAxisAlignment.start,
  //                               children: [
  //                                 Text(
  //                                   item['title'],
  //                                   style: black14MediumTextStyle,
  //                                 ),
  //                                 heightSpace,
  //                                 Text(
  //                                   item['subtitle'],
  //                                   style: black14RegularTextStyle,
  //                                 ),
  //                               ],
  //                             ),
  //                           ),
  //                           widthSpace,
  //                           ClipRRect(
  //                             borderRadius: BorderRadius.circular(10.0),
  //                             child: Image.asset(
  //                               item['image'],
  //                               width: 100.0,
  //                               height: 100.0,
  //                               fit: BoxFit.cover,
  //                             ),
  //                           ),
  //                         ],
  //                       ),
  //                 heightSpace,
  //                 Container(
  //                   width: double.infinity,
  //                   height: 1.0,
  //                   color: greyColor,
  //                 ),
  //               ],
  //             ),
  //           );
  //         },
  //       ),
  //     ],
  //   );
  // }

   reviews() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(
              fixPadding * 2.0, fixPadding * 2.0, fixPadding * 2.0, 0.0),
          child: Text(
            'Reviews',
            style: black16BoldTextStyle,
          ),
        ),
        ColumnBuilder(
          itemCount: reviewList.length,
          itemBuilder: (context, index) {
            final item = reviewList[index];
            return Padding(
              padding: (index != reviewList.length - 1)
                  ? const EdgeInsets.fromLTRB(
                      fixPadding * 2.0, fixPadding * 2.0, fixPadding * 2.0, 0.0)
                  : EdgeInsets.all(fixPadding * 2.0),
              child: Container(
                padding: EdgeInsets.all(fixPadding),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: Image.asset(
                        item['image'],
                        width: 60.0,
                        height: 60.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    widthSpace,
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                item['name'],
                                style: black14BoldTextStyle,
                              ),
                              ratingBar(item['rating']),
                            ],
                          ),
                          heightSpace,
                          Text(
                            item['review'],
                            style: black14RegularTextStyle,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(
              fixPadding * 2.0, 0.0, fixPadding * 2.0, fixPadding * 2.0),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.rightToLeft,
                  child: AllReviews(),
                ),
              );
            },
            borderRadius: BorderRadius.circular(10.0),
            child: Container(
              height: 40.0,
              width: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: whiteColor,
                border: Border.all(width: 1.5, color: primaryColor),
              ),
              child: Text(
                'View all reviews',
                style: primaryColor16BoldTextStyle,
              ),
            ),
          ),
        ),
      ],
    );
  }

  ratingBar(number) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        (number == 1 ||
                number == 2 ||
                number == 3 ||
                number == 4 ||
                number == 5)
            ? Icon(
                Icons.star_rate,
                size: 16.0,
                color: orangeColor,
              )
            : Container(),
        (number == 2 || number == 3 || number == 4 || number == 5)
            ? Icon(
                Icons.star_rate,
                size: 16.0,
                color: orangeColor,
              )
            : Container(),
        (number == 3 || number == 4 || number == 5)
            ? Icon(
                Icons.star_rate,
                size: 16.0,
                color: orangeColor,
              )
            : Container(),
        (number == 4 || number == 5)
            ? Icon(
                Icons.star_rate,
                size: 16.0,
                color: orangeColor,
              )
            : Container(),
        (number == 5)
            ? Icon(
                Icons.star_rate,
                size: 16.0,
                color: orangeColor,
              )
            : Container(),
      ],
    );
  }
}