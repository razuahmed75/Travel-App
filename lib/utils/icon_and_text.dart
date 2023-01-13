import 'package:flutter/material.dart';
import 'package:travel_app/config/colors.dart';
import 'package:travel_app/config/dimensions.dart';
import 'package:travel_app/utils/small_text.dart';

class IconAndText extends StatelessWidget {
  final String text;
  const IconAndText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.location_on_outlined,
          color: AppColors.textColor,
          size: Dimensions.height15 - 1,
        ),
        SizedBox(width: Dimensions.width10 - 3),
        SmallText(text: text),
      ],
    );
  }
}
