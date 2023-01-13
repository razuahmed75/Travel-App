import 'package:flutter/material.dart';
import 'package:travel_app/config/colors.dart';
import 'package:travel_app/config/dimensions.dart';
import 'package:travel_app/data/offer_category_model.dart';
import 'package:travel_app/utils/big_text.dart';
import 'package:travel_app/utils/small_text.dart';

class CardTile extends StatelessWidget {
  final int index;
  const CardTile({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: Dimensions.height20),
      child: Row(
        children: [
          /// image
          Container(
            width: Dimensions.width134,
            height: Dimensions.height131,
            decoration: BoxDecoration(
              color: AppColors.textColor,
              image: DecorationImage(
                image: AssetImage(OfferList[index].image),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(Dimensions.r16)),
            ),
          ),

          /// container text
          Expanded(
            child: Container(
              height: Dimensions.height131,
              padding: EdgeInsets.symmetric(
                vertical: Dimensions.height10,
                horizontal: Dimensions.width10,
              ),
              decoration: BoxDecoration(
                color: AppColors.mainColor.withOpacity(0.1),
                borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(Dimensions.r16)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// container text
                  Container(
                    // color: Colors.red.shade100,
                    width: Dimensions.width160,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        BigText(
                          text: OfferList[index].title,
                          color: AppColors.blackColor.withOpacity(0.6),
                        ),
                        SizedBox(height: Dimensions.height10),
                        SmallText(
                          maxLines: 4,
                          text: OfferList[index].subtitle,
                          size: Dimensions.font13 - 2,
                        ),
                        SizedBox(height: Dimensions.height10),
                        SmallText(
                          text: OfferList[index].dateTime,
                          color: AppColors.mainColor,
                        ),
                      ],
                    ),
                  ),

                  /// arrow forword icon
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.arrow_forward_ios,
                        size: Dimensions.height25 - 1,
                        color: AppColors.iconColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
