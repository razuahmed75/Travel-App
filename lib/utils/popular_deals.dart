import 'package:flutter/material.dart';
import 'package:travel_app/data/place_category_model.dart';
import 'package:travel_app/utils/small_text.dart';
import '../config/colors.dart';
import '../config/dimensions.dart';
import 'big_text.dart';
import 'icon_and_text.dart';
import 'transparent_container.dart';

class PopularPlaceTile extends StatelessWidget {
  final int index;

  const PopularPlaceTile({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: Dimensions.height20),
      child: Row(
        children: [
          /// image
          Container(
            width: Dimensions.width100 + 5,
            height: Dimensions.height160,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(Dimensions.r16)),
                image: DecorationImage(
                  image: AssetImage(placeTile[index].image),
                  fit: BoxFit.cover,
                )),
          ),

          /// container text
          Expanded(
            child: Container(
              height: Dimensions.height160,
              decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(Dimensions.r16))),
              child: Row(
                children: [
                  /// first row section
                  Container(
                    margin: EdgeInsets.only(
                      top: Dimensions.height10,
                      left: Dimensions.height10,
                      bottom: Dimensions.height10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(text: placeTile[index].title),
                        SizedBox(height: Dimensions.height10 - 2),
                        IconAndText(text: placeTile[index].locationName),
                        SizedBox(height: Dimensions.height10 + 1),
                        Row(
                          children: [
                            TransParentCon(
                              width: Dimensions.width40 + 2,
                              height: Dimensions.height20 + 1,
                              borderRadius: BorderRadius.circular(
                                  Dimensions.height10 / 2),
                              color: AppColors.iconColor.withOpacity(0.5),
                              text: placeTile[index].categoriesName1,
                              textColor: AppColors.textColor,
                            ),
                            SizedBox(width: Dimensions.width10),
                            TransParentCon(
                              width: Dimensions.width75,
                              height: Dimensions.height20 + 1,
                              borderRadius: BorderRadius.circular(
                                  Dimensions.height10 / 2),
                              color: AppColors.iconColor.withOpacity(0.5),
                              text: placeTile[index].categoriesName2,
                              textColor: AppColors.textColor,
                            ),
                          ],
                        ),
                        SizedBox(height: Dimensions.height20),
                        Wrap(
                          children: List.generate(
                              placeTile[index].rating,
                              (index) => Icon(
                                    Icons.star,
                                    color: AppColors.yellowColor,
                                    size: Dimensions.height10 + 2,
                                  )),
                        ),
                        SizedBox(height: Dimensions.height5),
                        SmallText(
                          text: placeTile[index].reviewCount,
                          size: Dimensions.font13 - 2,
                        ),
                      ],
                    ),
                  ),

                  /// second row section
                  Expanded(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: dynamicWidth(16.38)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Stack(
                                  alignment: AlignmentDirectional.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/bookmark.png',
                                      width: Dimensions.width24 + 4,
                                      height: Dimensions.height35 + 1,
                                    ),
                                    SmallText(
                                      text: placeTile[index].discountText,
                                      color: AppColors.whiteColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: Dimensions.height25 * 2),
                          Container(
                            margin: EdgeInsets.only(right: Dimensions.width10),
                            child: SmallText(
                              text: placeTile[index].availabeOffer,
                              fontWeight: FontWeight.w300,
                              size: Dimensions.font13 - 3,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: Dimensions.width10),
                            child: SmallText(
                              text: placeTile[index].totalAmount,
                              fontWeight: FontWeight.w700,
                              size: Dimensions.font16 - 1,
                              color: AppColors.mainColor,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: Dimensions.width10),
                            child: SmallText(
                              text: placeTile[index].discountAmount,
                              fontWeight: FontWeight.w300,
                              color: AppColors.mainColor,
                              size: Dimensions.font13 - 2,
                              decoration: TextDecoration.lineThrough,
                            ),
                          )
                        ],
                      ),
                    ),
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
