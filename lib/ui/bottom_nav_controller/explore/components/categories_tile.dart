import 'package:flutter/material.dart';
import 'package:travel_app/config/colors.dart';
import 'package:travel_app/config/dimensions.dart';
import 'package:travel_app/utils/big_text.dart';

class CategoriesTile extends StatelessWidget {
  final int index;
  const CategoriesTile({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;
    List _iconList = <IconData>[
      Icons.hotel_outlined,
      Icons.restaurant_outlined,
      Icons.flight_outlined,
    ];
    List _categoryName = <String>[
      'Hotel/Resort',
      'Restaurant',
      'Air Ticket',
    ];
    return Container(
      width: Dimensions.width100 * 1.5,
      height: Dimensions.height45 + 3,
      margin: EdgeInsets.only(right: Dimensions.width10 - 2),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(Dimensions.r16),
        border: Border.all(
            color: _selectedIndex == index
                ? AppColors.mainColor
                : Colors.transparent),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            _iconList[index],
            size: Dimensions.height35 - 5,
            color: AppColors.textColor,
          ),
          SizedBox(width: Dimensions.width10 / 2),
          BigText(
            text: _categoryName[index],
            size: Dimensions.font16,
            color: _selectedIndex == index
                ? AppColors.mainColor
                : AppColors.textColor,
          ),
        ],
      ),
    );
  }
}
