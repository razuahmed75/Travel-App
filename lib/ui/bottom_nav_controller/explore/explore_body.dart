import 'package:flutter/material.dart';
import '../../../config/colors.dart';
import '../../../config/dimensions.dart';
import '../../../data/place_category_model.dart';
import '../../../utils/popular_deals.dart';
import '../../../utils/square_icon.dart';
import 'components/categories_tile.dart';
import 'components/date_time_card.dart';
import 'components/header_image.dart';
import 'components/header_title.dart';
import 'components/location_search_bar.dart';
import 'components/map_icon.dart';

class ExploreBody extends StatelessWidget {
  const ExploreBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /// image
        ExploreHeaderImage(),

        ///where do you wanna go? and weather update
        HeaderTitle(),

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
                  /// date time, search, menu
                  Container(
                    margin: EdgeInsets.only(top: Dimensions.height10 - 2),
                    child: Row(
                      children: [
                        /// date time card
                        DateTimeCard(),
                        SizedBox(width: Dimensions.width10 - 2),

                        /// search icon
                        SquareIcon(image: 'assets/icons/search.png'),
                        SizedBox(width: Dimensions.width10 - 2),

                        /// menu
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
              LocationSearchBar(),
              SizedBox(width: Dimensions.width10 - 2),

              /// map icon
              MapIcon(onTap: () {}),
            ],
          ),
        ),
      ],
    );
  }
}
