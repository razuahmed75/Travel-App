import 'package:flutter/material.dart';
import '../../../../config/colors.dart';
import '../../../../config/dimensions.dart';
import '../../../../utils/small_text.dart';

class ShowAll extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  const ShowAll({
    super.key,
    required this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: dynamicWidth(96),
        height: dynamicHeight(32),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(dynamicRadius(16))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SmallText(
              text: text,
              size: dynamicFont(14),
            ),
            SizedBox(width: dynamicWidth(9)),
            Icon(
              Icons.arrow_forward_ios,
              color: AppColors.iconColor,
              size: dynamicHeight(10),
            ),
          ],
        ),
      ),
    );
  }
}
