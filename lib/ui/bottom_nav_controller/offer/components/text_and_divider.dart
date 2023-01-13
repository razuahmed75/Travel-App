import 'package:flutter/material.dart';
import 'package:travel_app/config/colors.dart';
import 'package:travel_app/config/dimensions.dart';
import 'package:travel_app/utils/big_text.dart';

class TextAndDivider extends StatelessWidget {
  final String text;
  final Color? textColor;
  final double? fontSize;
  const TextAndDivider({
    super.key,
    required this.text,
    this.textColor,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BigText(
            text: text,
            size: fontSize ?? Dimensions.font22,
            color: textColor ?? AppColors.blackColor.withOpacity(0.6),
          ),
          SizedBox(height: Dimensions.height10),
          Container(
            color: AppColors.iconColor,
            height: 1,
            width: Dimensions.width100 / 2,
          ),
        ],
      ),
    );
  }
}
