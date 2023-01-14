import 'package:flutter/material.dart';
import 'package:travel_app/config/colors.dart';
import 'package:travel_app/config/dimensions.dart';
import 'package:travel_app/data/favorite_category_model.dart';
import 'package:travel_app/utils/big_text.dart';
import 'package:travel_app/utils/discount_percentage.dart';
import 'package:travel_app/utils/icon_and_text.dart';

class FavoriteTile extends StatelessWidget {
  final int index;

  const FavoriteTile({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: dynamicWidth(15)),
      child: Column(
        children: [
          /// image section
          Container(
            width: dynamicWidth(238),
            height: dynamicHeight(129),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                    top: Radius.circular(dynamicRadius(16))),
                image: DecorationImage(
                  image: AssetImage(favoriteList[index].imagePath),
                  fit: BoxFit.cover,
                )),
            child: Stack(
              children: [
                DiscountPercentage(
                    discountPercent: favoriteList[index].discount,
                    marginRight: 16),
                Positioned(
                  right: dynamicWidth(10),
                  bottom: dynamicHeight(10),
                  child: Wrap(
                    children: List.generate(
                        favoriteList[index].starCount,
                        (index) => Icon(
                              Icons.star,
                              color: AppColors.yellowColor,
                              size: dynamicHeight(7.83),
                            )),
                  ),
                ),
              ],
            ),
          ),

          /// hotel name and location
          Container(
            width: dynamicWidth(238),
            height: dynamicHeight(55),
            padding: EdgeInsets.only(
                top: dynamicHeight(10),
                bottom: dynamicHeight(12),
                left: dynamicWidth(14)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(dynamicRadius(16))),
              color: AppColors.whiteColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BigText(
                  text: favoriteList[index].hotelName,
                  size: dynamicFont(16),
                ),
                IconAndText(
                  text: favoriteList[index].locationName,
                  textSize: dynamicFont(10),
                  iconSize: dynamicHeight(10),
                  textAndIconDistance: 5.22,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
