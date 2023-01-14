import 'package:flutter/material.dart';
import '../../../../config/colors.dart';
import '../../../../config/dimensions.dart';

class BuildEditButton extends StatelessWidget {
  final void Function()? onTap;
  const BuildEditButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: dynamicHeight(12),
      right: dynamicWidth(23),
      child: GestureDetector(
        onTap: onTap,
        child: Image.asset(
          'assets/icons/edit.png',
          width: dynamicHeight(18),
          height: dynamicHeight(18),
          color: AppColors.iconColor,
        ),
      ),
    );
  }
}
