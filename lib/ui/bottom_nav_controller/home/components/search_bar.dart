import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../config/colors.dart';
import '../../../../config/dimensions.dart';
import '../../../../utils/small_text.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            height: Dimensions.height45 + 3,
            padding: EdgeInsets.only(
              left: Dimensions.width15,
              right: Dimensions.width10,
              top: Dimensions.height10 / 2,
              bottom: Dimensions.height10 - 2,
            ),
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(Dimensions.r13 + 3),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Where do you wanna go?',
                hintStyle: TextStyle(
                  color: AppColors.textColor,
                  fontSize: Dimensions.font16,
                ),
                suffixIcon: Padding(
                  padding: EdgeInsets.all(Dimensions.height10 / 2),
                  child: SvgPicture.asset(
                    'assets/svg/arrow.svg',
                    color: AppColors.mainColor,
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: Dimensions.width10 + 2),
        Container(
          padding: EdgeInsets.all(Dimensions.height10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimensions.r13 + 3),
            color: AppColors.mainColor,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/svg/Vector.svg',
                width: Dimensions.width20,
                height: Dimensions.height20 - 3,
              ),
              SmallText(
                text: 'Emergency',
                color: AppColors.whiteColor,
                size: Dimensions.height10 - 2,
              )
            ],
          ),
        ),
      ],
    );
  }
}
