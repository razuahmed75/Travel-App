import 'package:flutter/material.dart';
import '../../../../config/colors.dart';
import '../../../../config/dimensions.dart';

class CheckMark extends StatelessWidget {
  const CheckMark({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: Dimensions.width20,
        height: Dimensions.width20,
        margin: EdgeInsets.only(
          right: Dimensions.width10 - 2,
          bottom: Dimensions.height10 / 2,
        ),
        decoration: BoxDecoration(
          color: AppColors.mainColor,
          borderRadius: BorderRadius.circular(Dimensions.width20 / 2),
        ),
        child: Image.asset(
          'assets/icons/check.png',
          color: AppColors.whiteColor,
          width: Dimensions.width10 - 1,
          height: Dimensions.width10 - 1,
        ));
  }
}
