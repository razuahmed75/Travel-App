import 'package:flutter/material.dart';
import '../../../../config/colors.dart';
import '../../../../config/dimensions.dart';
import '../../../../utils/big_text.dart';

class HeaderTitle extends StatelessWidget {
  const HeaderTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: Dimensions.height76,
      left: Dimensions.width24,
      right: Dimensions.width24,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BigText(
            text: 'Where do\n you wanna go?',
            color: AppColors.whiteColor,
            size: Dimensions.font30 - 5,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.whiteColor),
                    borderRadius: BorderRadius.circular(Dimensions.r16)),
                child: Image.asset(
                  'assets/icons/rain.png',
                  height: Dimensions.height35 - 5,
                  width: Dimensions.height35 - 5,
                ),
              ),
              SizedBox(height: 5),
              BigText(
                text: 'Rainy',
                color: AppColors.whiteColor,
                size: Dimensions.font13 + 1,
                fontWeight: FontWeight.w400,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
