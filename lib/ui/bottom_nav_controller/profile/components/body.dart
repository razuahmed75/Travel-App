import 'package:flutter/material.dart';
import 'package:travel_app/config/colors.dart';
import 'package:travel_app/ui/bottom_nav_controller/offer/components/text_and_divider.dart';
import 'package:travel_app/utils/big_text.dart';
import 'package:travel_app/utils/continue_button.dart';
import 'package:travel_app/utils/popular_deals.dart';
import 'package:travel_app/utils/small_text.dart';
import '../../../../config/dimensions.dart';
import 'package:circle_progress_bar/circle_progress_bar.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// profile card
          Stack(
            clipBehavior: Clip.none,
            children: [
              /// image
              Container(
                width: double.maxFinite,
                height: Dimensions.height217,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/images/Login Page.png'),
                  fit: BoxFit.cover,
                )),
              ),

              /// icon
              Positioned(
                right: Dimensions.width24 + 4,
                top: Dimensions.height45 - 3,
                child: Container(
                  padding: EdgeInsets.all(Dimensions.height10),
                  decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(Dimensions.r13)),
                  child: Icon(
                    Icons.notifications_outlined,
                    color: AppColors.textColor,
                    size: Dimensions.height15 + 2,
                  ),
                ),
              ),

              /// body
              Positioned(
                top: Dimensions.height217 - 20,
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: AppColors.scaffoldColor,
                    borderRadius: BorderRadius.vertical(
                        top: Radius.circular(Dimensions.r25)),
                  ),
                ),
              ),

              /// profile status
              Positioned(
                top: Dimensions.height217 - 40,
                left: 0,
                right: 0,
                child: Container(
                  height: Dimensions.height160 - 6,
                  width: double.maxFinite,
                  margin: EdgeInsets.symmetric(horizontal: dynamicWidth(27)),
                  decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(Dimensions.r16)),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      /// user profile photo
                      Positioned(
                        top: -dynamicHeight(60),
                        left: 0,
                        right: 0,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            width: Dimensions.width100,
                            height: Dimensions.width100,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/profile.jpg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(
                                  Dimensions.width100 / 2),
                            ),
                            child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                /// check mark
                                Container(
                                    width: Dimensions.width20,
                                    height: Dimensions.width20,
                                    margin: EdgeInsets.only(
                                      right: Dimensions.width10 - 2,
                                      bottom: Dimensions.height10 / 2,
                                    ),
                                    decoration: BoxDecoration(
                                      color: AppColors.mainColor,
                                      borderRadius: BorderRadius.circular(
                                          Dimensions.width20 / 2),
                                    ),
                                    child: Image.asset(
                                      'assets/icons/check.png',
                                      color: AppColors.whiteColor,
                                      width: Dimensions.width10 - 1,
                                      height: Dimensions.width10 - 1,
                                    ))
                              ],
                            ),
                          ),
                        ),
                      ),

                      /// user credential info
                      Positioned(
                          top: Dimensions.height55,
                          left: 0,
                          right: 0,
                          child: Align(
                            alignment: Alignment.center,
                            child: Container(
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      BigText(
                                        text: 'John Smith',
                                        size: Dimensions.font22,
                                      ),
                                      SizedBox(width: Dimensions.width10 / 2),
                                      Container(
                                        alignment: Alignment.center,
                                        width: Dimensions.width40 + 3,
                                        height: Dimensions.height15 + 2,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: AppColors.mainColor),
                                          borderRadius: BorderRadius.circular(
                                              Dimensions.r13 - 3),
                                        ),
                                        child: SmallText(
                                          text: 'Active',
                                          size: Dimensions.font13 - 2,
                                          color: AppColors.mainColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: dynamicHeight(7)),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SmallText(
                                        text: '#83GHGNV',
                                        color: AppColors.mainColor,
                                        size: Dimensions.font16 - 1,
                                      ),
                                      SizedBox(width: Dimensions.width10 / 2),
                                      Icon(
                                        Icons.content_copy,
                                        size: Dimensions.height15,
                                        color: AppColors.iconColor,
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: dynamicHeight(8)),
                                  SmallText(
                                    text: 'Dhaka, Bangladesh',
                                    size: Dimensions.font13 - 2,
                                  ),
                                ],
                              ),
                            ),
                          )),

                      /// edit icon
                      Positioned(
                          top: dynamicHeight(12),
                          right: dynamicWidth(23),
                          child: GestureDetector(
                            onTap: () {},
                            child: Image.asset(
                              'assets/icons/edit.png',
                              width: dynamicHeight(18),
                              height: dynamicHeight(18),
                              color: AppColors.iconColor,
                            ),
                          )),
                    ],
                  ),
                ),
              ),

              //
            ],
          ),

          /// body text
          Container(
            margin: EdgeInsets.only(
              top: dynamicHeight(126),
              left: dynamicWidth(27),
              right: dynamicWidth(27),
            ),
            width: double.infinity,
            height: Dimensions.height217 - 3,
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(Dimensions.r16),
            ),
            child: Container(
              margin: EdgeInsets.only(
                top: dynamicHeight(30),
                left: dynamicWidth(25),
                bottom: dynamicHeight(20),
                right: dynamicWidth(27),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// circular progress bar
                      SizedBox(
                          height: dynamicHeight(101),
                          child: RotationTransition(
                            turns: new AlwaysStoppedAnimation(85 / 360),
                            child: CircleProgressBar(
                              backgroundColor: AppColors.iconColor,
                              foregroundColor: AppColors.mainColor,
                              value: 0.7,
                              animationDuration: Duration(seconds: 2),
                              // reversedDirection: true,
                              child: Center(
                                  child: RotationTransition(
                                      turns:
                                          new AlwaysStoppedAnimation(-85 / 360),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SmallText(
                                            text: '120',
                                            color: AppColors.mainColor,
                                            size: dynamicFont(16),
                                            fontWeight: FontWeight.bold,
                                          ),
                                          SmallText(
                                            text: 'days remaining',
                                            size: dynamicFont(10),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ],
                                      ))),
                            ),
                          )),

                      /// amount of discounts
                      Column(
                        children: [
                          BigText(
                            text: '12',
                            color: AppColors.mainColor,
                            fontWeight: FontWeight.bold,
                          ),
                          SmallText(
                            text: 'discounts\n claimed',
                            size: dynamicFont(14),
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),

                      /// amounts of saved taka
                      Column(
                        children: [
                          BigText(
                            text: '45k+',
                            color: AppColors.mainColor,
                            fontWeight: FontWeight.bold,
                          ),
                          SmallText(
                            text: 'taka saved\n traveling',
                            size: dynamicFont(14),
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ],
                  ),

                  /// buy subcription button
                  BuildMaterialButton(
                    title: 'Buy Subscription',
                    fontSize: dynamicFont(14),
                    fontWeight: FontWeight.w400,
                    minWidth: dynamicWidth(147),
                    height: dynamicHeight(40),
                    radius: dynamicRadius(20),
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: dynamicHeight(30)),

          /// my discounts
          Container(
            margin: EdgeInsets.only(
              left: dynamicWidth(27),
              right: dynamicWidth(27),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextAndDivider(
                  text: 'My Discounts',
                  fontSize: dynamicFont(20),
                  textColor: AppColors.blackColor,
                ),

                /// show all
                Container(
                  width: dynamicWidth(96),
                  height: dynamicHeight(32),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(dynamicRadius(16))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SmallText(
                        text: 'Show all',
                        size: dynamicFont(14),
                      ),
                      SizedBox(width: dynamicWidth(9)),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.iconColor,
                        size: dynamicHeight(10),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          //list view
          Container(
            margin: EdgeInsets.only(
              left: dynamicWidth(27),
              right: dynamicWidth(27),
            ),
            child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 6,
                itemBuilder: (_, index) {
                  return PopularPlaceTile(index: index);
                }),
          ),
          SizedBox(height: dynamicHeight(85)),
        ],
      ),
    );
  }
}
