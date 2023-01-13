import 'package:flutter/material.dart';
import 'package:travel_app/config/colors.dart';
import 'package:travel_app/config/dimensions.dart';
import 'package:travel_app/utils/small_text.dart';

class CircleTiles extends StatelessWidget {
  final int index;
  const CircleTiles({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    List listName = [
      "Hotel/Resort",
      "Restaurant",
      "Cruise",
      "Flight",
      "Ship",
      "Hotel/Resort",
      "Restaurant",
      "Cruise",
    ];
    List iconList = <IconData>[
      Icons.hotel_outlined,
      Icons.restaurant_outlined,
      Icons.shopping_basket_outlined,
      Icons.flight_outlined,
      Icons.hotel_outlined,
      Icons.restaurant_outlined,
      Icons.shopping_basket_outlined,
      Icons.flight_outlined,
    ];
    var mockupHieght = 896;
    var deviceHeight = MediaQuery.of(context).size.height;
    // var scaleFactor = mockupHieght * deviceHeight;
    var scale = mockupHieght / deviceHeight; // this is accorate

    return Container(
      margin: EdgeInsets.only(right: Dimensions.width15),
      child: Column(
        children: [
          Container(
            width: Dimensions.width40 * 2,
            height: Dimensions.height45 + 20,
            // width: 80 / scale,
            // height: 65 / scale,
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(Dimensions.r16),
            ),
            child: Icon(
              iconList[index],
              color: AppColors.textColor,
              size: Dimensions.height45 - 3,
            ),
          ),
          SizedBox(height: Dimensions.height5 - 2),
          SmallText(text: listName[index]),
        ],
      ),
    );
  }
}
