import 'package:flutter/material.dart';
import '../../../../config/colors.dart';
import '../../../../config/dimensions.dart';
import '../../../../utils/big_text.dart';

class LocationSearchBar extends StatelessWidget {
  const LocationSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
    );
  }
}
