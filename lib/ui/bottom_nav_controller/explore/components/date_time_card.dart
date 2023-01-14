import 'package:flutter/material.dart';
import '../../../../config/colors.dart';
import '../../../../config/dimensions.dart';
import '../../../../utils/big_text.dart';

class DateTimeCard extends StatelessWidget {
  const DateTimeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: Dimensions.height45 + 3,
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(Dimensions.r16),
        ),
        child: Container(
          margin: EdgeInsets.only(left: Dimensions.width10 + 2),
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
    );
  }
}
