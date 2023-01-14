import 'package:flutter/material.dart';
import '../../../../config/colors.dart';
import '../../../../config/dimensions.dart';

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: Dimensions.width24 + 4,
      top: Dimensions.height45 - 3,
      child: Container(
        padding: EdgeInsets.all(Dimensions.height10),
        decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(Dimensions.r13)),
        child: Icon(
          Icons.notifications_outlined,
          color: AppColors.textColor,
          size: Dimensions.height15 + 2,
        ),
      ),
    );
  }
}
