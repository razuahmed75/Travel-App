import 'package:flutter/material.dart';
import 'package:travel_app/config/colors.dart';
import 'package:travel_app/config/dimensions.dart';
import 'package:travel_app/utils/small_text.dart';

class IconAndText extends StatelessWidget {
  final String text;
  final double? textSize, iconSize, textAndIconDistance;

  const IconAndText({
    super.key,
    required this.text,
    this.textSize,
    this.iconSize,
    this.textAndIconDistance,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.location_on_outlined,
          color: AppColors.textColor,
          size: iconSize ?? Dimensions.height15 - 1,
        ),
        SizedBox(width: dynamicWidth(textAndIconDistance ?? 7.11)),
        SmallText(
          text: text,
          size: textSize ?? dynamicFont(13),
        ),
      ],
    );
  }
}
