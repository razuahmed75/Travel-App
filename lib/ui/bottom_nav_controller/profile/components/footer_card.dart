import 'package:flutter/material.dart';
import '../../../../config/colors.dart';
import '../../../../config/dimensions.dart';
import '../../../../utils/small_text.dart';

class FooterCard extends StatelessWidget {
  final String imagePath, text;
  final void Function()? onTap;

  const FooterCard({
    super.key,
    required this.imagePath,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: dynamicWidth(108),
        height: dynamicWidth(108),
        padding:
            EdgeInsets.only(top: dynamicHeight(21), bottom: dynamicHeight(13)),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(dynamicRadius(16)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: dynamicHeight(37),
              height: dynamicHeight(37),
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              )),
            ),
            SmallText(
              text: text,
              fontWeight: FontWeight.w500,
            ),
          ],
        ),
      ),
    );
  }
}
