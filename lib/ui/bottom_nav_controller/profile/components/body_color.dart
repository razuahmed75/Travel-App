import 'package:flutter/material.dart';
import '../../../../config/colors.dart';
import '../../../../config/dimensions.dart';

class BodyColor extends StatelessWidget {
  const BodyColor({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: Dimensions.height217 - 20,
      left: 0,
      right: 0,
      bottom: 0,
      child: Container(
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: AppColors.scaffoldColor,
          borderRadius:
              BorderRadius.vertical(top: Radius.circular(Dimensions.r25)),
        ),
      ),
    );
  }
}
