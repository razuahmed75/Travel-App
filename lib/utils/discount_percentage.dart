import 'package:flutter/material.dart';
import '../config/colors.dart';
import '../config/dimensions.dart';
import 'small_text.dart';

class DiscountPercentage extends StatelessWidget {
  final String discountPercent;
  final double marginRight;
  const DiscountPercentage({
    super.key,
    required this.discountPercent,
    required this.marginRight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: dynamicWidth(marginRight)),
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
                text: discountPercent,
                color: AppColors.whiteColor,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
