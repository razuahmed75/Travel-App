import 'package:flutter/material.dart';
import 'package:travel_app/config/colors.dart';
import 'package:travel_app/data/place_category_model.dart';
import 'package:travel_app/config/dimensions.dart';

import 'package:travel_app/utils/big_text.dart';
import 'package:travel_app/utils/square_icon.dart';
import '../../../utils/popular_deals.dart';
import 'components/categories_tile.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade100,
      body: Stack(
        children: [
          /// image
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.height217,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/images/Login Page.png'),
                fit: BoxFit.cover,
              )),
            ),
          ),

          ///where do you wanna go?
          Positioned(
            top: Dimensions.height76,
            left: Dimensions.width24,
            right: Dimensions.width24,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BigText(
                  text: 'Where do\n you wanna go?',
                  color: AppColors.whiteColor,
                  size: Dimensions.font30 - 5,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(color: AppColors.whiteColor),
                          borderRadius: BorderRadius.circular(Dimensions.r16)),
                      child: Image.asset(
                        'assets/icons/rain.png',
                        height: Dimensions.height35 - 5,
                        width: Dimensions.height35 - 5,
                      ),
                    ),
                    SizedBox(height: 5),
                    BigText(
                      text: 'Rainy',
                      color: AppColors.whiteColor,
                      size: Dimensions.font13 + 1,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
              ],
            ),
          ),

          /// body section
          Positioned(
            top: Dimensions.height217 - 20,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.only(
                left: Dimensions.width24,
                right: Dimensions.width24,
                top: Dimensions.height25,
              ),
              decoration: BoxDecoration(
                  color: AppColors.scaffoldColor,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(Dimensions.r25),
                  )),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    /// date time
                    Container(
                      margin: EdgeInsets.only(top: Dimensions.height10 - 2),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: Dimensions.height45 + 3,
                              decoration: BoxDecoration(
                                color: AppColors.whiteColor,
                                borderRadius:
                                    BorderRadius.circular(Dimensions.r16),
                              ),
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: Dimensions.width10 + 2),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.date_range,
                                      color: AppColors.textColor,
                                      size: Dimensions.height15 + 1,
                                    ),
                                    SizedBox(width: Dimensions.width10),
                                    BigText(
                                      text: '21 Nov - 1 Dec',
                                      size: Dimensions.font16,
                                      color: AppColors.textColor,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: Dimensions.width10 - 2),

                          /// map icon
                          SquareIcon(image: 'assets/icons/search.png'),
                          SizedBox(width: Dimensions.width10 - 2),
                          SquareIcon(image: 'assets/icons/menu.png'),
                        ],
                      ),
                    ),
                    SizedBox(height: Dimensions.height15),

                    /// divider
                    Container(
                      height: 1,
                      width: double.maxFinite,
                      color: AppColors.iconColor,
                    ),
                    SizedBox(height: Dimensions.height15),

                    /// categories listview
                    Container(
                      height: Dimensions.height45 + 3,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 3,
                          itemBuilder: (_, index) {
                            return CategoriesTile(index: index);
                          }),
                    ),

                    /// Popular place listTile
                    ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: placeTile.length,
                        itemBuilder: (_, index) {
                          return PopularPlaceTile(index: index);
                        }),
                    SizedBox(height: Dimensions.height10),
                  ],
                ),
              ),
            ),
          ),

          /// select destination
          Positioned(
            top: Dimensions.height217 - 40,
            left: 0,
            right: 0,
            child: Row(
              children: [
                /// search bar
                Expanded(
                  child: Container(
                    height: Dimensions.height45 + 3,
                    margin: EdgeInsets.only(
                      left: Dimensions.width24,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(Dimensions.r16),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(left: Dimensions.width10 + 2),
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: AppColors.textColor,
                            size: Dimensions.height15 + 1,
                          ),
                          SizedBox(width: Dimensions.width10),
                          BigText(
                            text: 'Select Destination',
                            size: Dimensions.font16,
                            color: AppColors.textColor,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: Dimensions.width10 - 2),

                /// map icon
                Container(
                    width: Dimensions.width46 + 1,
                    height: Dimensions.height45 + 3,
                    margin: EdgeInsets.only(right: Dimensions.width24 + 1),
                    decoration: BoxDecoration(
                        color: AppColors.mainColor,
                        borderRadius: BorderRadius.circular(Dimensions.r16)),
                    child: Icon(
                      Icons.map_outlined,
                      color: AppColors.whiteColor,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
