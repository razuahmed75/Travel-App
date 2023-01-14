import 'package:flutter/material.dart';
import '../../../../config/colors.dart';
import '../../../../config/dimensions.dart';
import '../../../../utils/small_text.dart';

class UserToken extends StatelessWidget {
  const UserToken({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SmallText(
          text: '#83GHGNV',
          color: AppColors.mainColor,
          size: Dimensions.font16 - 1,
        ),
        SizedBox(width: Dimensions.width10 / 2),
        Icon(
          Icons.content_copy,
          size: Dimensions.height15,
          color: AppColors.iconColor,
        ),
      ],
    );
  }
}
