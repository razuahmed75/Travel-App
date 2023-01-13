import 'package:flutter/material.dart';
import 'package:travel_app/config/colors.dart';
import 'package:travel_app/config/dimensions.dart';
import 'package:travel_app/utils/small_text.dart';

class ExpandedContainer extends StatelessWidget {
  final String icon;
  final String text;
  final void Function() onPressed;

  const ExpandedContainer({
    super.key,
    required this.icon,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(50),
        child: Container(
          height: Dimensions.height85,
          // alignment: Alignment.center,
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(Dimensions.r16),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                icon,
                width: Dimensions.width10 * 3,
                height: Dimensions.height10 * 3,
              ),
              SizedBox(height: Dimensions.height10 + 3),
              SmallText(text: text, size: Dimensions.font13 + 1),
            ],
          ),
        ),
      ),
    );
  }
}
