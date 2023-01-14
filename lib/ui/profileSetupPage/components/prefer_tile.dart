import 'package:flutter/material.dart';
import '../../../config/colors.dart';
import '../../../config/dimensions.dart';
import '../../../utils/transparent_container.dart';

class PreferSection extends StatelessWidget {
  const PreferSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: dynamicWidth(38),
        right: dynamicWidth(32),
      ),
      child: Row(
        children: [
          TransParentCon(
            text: 'Mountains',
            width: Dimensions.width91,
            height: Dimensions.height45,
            color: AppColors.whiteColor.withOpacity(0.4),
          ),
          SizedBox(width: Dimensions.width10 - 2),
          TransParentCon(
            text: 'Rivers',
            width: Dimensions.width64 - 3,
            height: Dimensions.height45,
            color: AppColors.whiteColor.withOpacity(0.4),
          ),
          SizedBox(width: Dimensions.width10 - 2),
          TransParentCon(
            text: 'Desert',
            textColor: AppColors.mainColor,
            width: Dimensions.width64 + 1,
            height: Dimensions.height45,
            color: AppColors.whiteColor,
          ),
          SizedBox(width: Dimensions.width10 - 2),
          TransParentCon(
            text: 'Sea',
            textColor: AppColors.mainColor,
            width: Dimensions.width64 - 10,
            height: Dimensions.height45 - 5,
            color: AppColors.whiteColor,
          ),
        ],
      ),
    );
  }
}
