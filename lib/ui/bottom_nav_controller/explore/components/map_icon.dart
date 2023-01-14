import 'package:flutter/material.dart';
import '../../../../config/colors.dart';
import '../../../../config/dimensions.dart';

class MapIcon extends StatelessWidget {
  final Function()? onTap;
  const MapIcon({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          width: Dimensions.width46 + 1,
          height: Dimensions.height45 + 3,
          margin: EdgeInsets.only(right: Dimensions.width24 + 1),
          decoration: BoxDecoration(
              color: AppColors.mainColor,
              borderRadius: BorderRadius.circular(Dimensions.r16)),
          child: Icon(
            Icons.map_outlined,
            color: AppColors.whiteColor,
          )),
    );
  }
}
