import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../config/colors.dart';
import '../config/dimensions.dart';
import 'big_text.dart';

class CatgoriesText extends StatelessWidget {
  final String text;
  const CatgoriesText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BigText(text: text, size: Dimensions.font18 + 2),
            SizedBox(height: Dimensions.height5 + 1),
            Container(
              color: AppColors.iconColor,
              height: 1,
              width: Dimensions.width10 * 5,
            ),
          ],
        ),
        SvgPicture.asset(
          'assets/svg/arrow.svg',
          color: AppColors.textColor,
          height: Dimensions.height25 + 2,
        ),
      ],
    );
  }
}
