import 'package:flutter/cupertino.dart';
import 'package:travel_app/config/colors.dart';
import 'package:travel_app/config/dimensions.dart';
import 'package:travel_app/data/discount_category_model.dart';
import 'package:travel_app/utils/big_text.dart';
import 'package:travel_app/utils/discount_percentage.dart';
import 'package:travel_app/utils/small_text.dart';

class DiscountTile extends StatelessWidget {
  final int index;
  const DiscountTile({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: dynamicHeight(13)),
      child: Row(
        children: [
          /// image
          Container(
            width: dynamicWidth(86),
            height: dynamicHeight(95),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(DiscountList[index].imagePath),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(dynamicRadius(16))),
            ),
          ),

          /// container text
          Expanded(
            child: Container(
              height: dynamicHeight(95),
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius:
                    BorderRadius.horizontal(right: Radius.circular(16)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /// first column
                  Container(
                    margin: EdgeInsets.only(
                        top: dynamicHeight(7),
                        bottom: dynamicHeight(7),
                        left: dynamicHeight(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /// room varient and quantity
                        Row(
                          children: [
                            BigText(text: DiscountList[index].roomVarient),
                            SizedBox(width: dynamicWidth(10)),
                            SmallText(
                              text: DiscountList[index].quantity,
                              size: dynamicFont(15),
                              fontWeight: FontWeight.w500,
                            ),
                          ],
                        ),
                        SizedBox(height: dynamicHeight(6)),

                        /// hotel name
                        SmallText(text: DiscountList[index].hotelName),
                        SizedBox(height: dynamicHeight(16)),

                        /// date and pending
                        Row(
                          children: [
                            Container(
                              width: dynamicWidth(50),
                              height: dynamicHeight(21),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(dynamicRadius(5)),
                                color: AppColors.textColor.withOpacity(0.25),
                              ),
                              child:
                                  SmallText(text: DiscountList[index].dateTime),
                            ),
                            SizedBox(width: dynamicWidth(8)),
                            Container(
                              width: dynamicWidth(55.84),
                              height: dynamicHeight(21),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(dynamicRadius(5)),
                                color: AppColors.textColor.withOpacity(0.25),
                              ),
                              child:
                                  SmallText(text: DiscountList[index].pending),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  /// second column
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// disount percentage
                      DiscountPercentage(
                          discountPercent: DiscountList[index].discount,
                          marginRight: 23),

                      /// total amount
                      Container(
                        margin: EdgeInsets.only(
                            bottom: dynamicHeight(7), right: dynamicHeight(18)),
                        child: SmallText(
                          text: DiscountList[index].totalAmount,
                          size: dynamicFont(15),
                        ),
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
