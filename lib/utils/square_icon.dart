import 'package:flutter/material.dart';
import '../config/colors.dart';
import '../config/dimensions.dart';

class SquareIcon extends StatelessWidget {
  final String image;
  const SquareIcon({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimensions.width46 + 2,
      height: Dimensions.width46 + 2,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(Dimensions.r16),
      ),
      child: Image.asset(
        image,
      ),
    );
  }
}
