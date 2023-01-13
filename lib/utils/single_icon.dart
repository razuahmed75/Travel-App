import 'package:flutter/material.dart';
import 'package:travel_app/config/dimensions.dart';
import '../config/colors.dart';

class HeaderIcons extends StatelessWidget {
  final String firstIcon;
  final IconData secondIcon;

  const HeaderIcons({
    super.key,
    required this.firstIcon,
    required this.secondIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(Dimensions.height10),
          decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(Dimensions.r13)),
          child: Image.asset(
            firstIcon,
            height: Dimensions.height15 + 2,
            width: Dimensions.width15 + 2,
          ),
        ),
        SizedBox(width: Dimensions.width10),
        Container(
          padding: EdgeInsets.all(Dimensions.height10),
          decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(Dimensions.r13)),
          child: Icon(
            secondIcon,
            color: AppColors.textColor,
            size: Dimensions.height15 + 2,
          ),
        ),
      ],
    );
  }
}
