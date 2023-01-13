import 'package:flutter/material.dart';
import '../config/colors.dart';
import '../config/dimensions.dart';
import 'big_text.dart';
import 'small_text.dart';

class AroundTheWorldTile extends StatelessWidget {
  final String? image, title, subtitle;

  const AroundTheWorldTile({
    super.key,
    this.image,
    this.title,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.height200 + 26,
      alignment: Alignment.bottomCenter,
      margin: EdgeInsets.only(bottom: Dimensions.height20),
      padding: EdgeInsets.only(
        left: Dimensions.width20,
        bottom: Dimensions.height35 - 5,
        right: Dimensions.width20,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image ?? 'assets/popular_deals/place.jpg'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(Dimensions.r25 + 1),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BigText(
            text: title ?? 'A Journey to Bandarban',
            size: Dimensions.font18 + 2,
            color: AppColors.whiteColor,
          ),
          SizedBox(height: Dimensions.height5),
          SmallText(
            text: subtitle ??
                'It was a very good journey, we visited a lot of places there. The travel became so affordable, the interest thing is',
            color: AppColors.whiteColor,
          )
        ],
      ),
    );
  }
}
