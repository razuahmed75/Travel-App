import 'package:flutter/material.dart';
import '../../../../config/colors.dart';
import '../../../../config/dimensions.dart';
import '../../../../utils/big_text.dart';
import '../../../../utils/continue_button.dart';
import '../../../../utils/small_text.dart';
import 'circular_progressbar.dart';

class SubscriptionCard extends StatelessWidget {
  const SubscriptionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: dynamicHeight(126),
        left: dynamicWidth(27),
        right: dynamicWidth(27),
      ),
      width: double.infinity,
      height: dynamicHeight(220),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(Dimensions.r16),
      ),
      child: Container(
        margin: EdgeInsets.only(
          top: dynamicHeight(27),
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
                CircularProgress(),

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
    );
  }
}
