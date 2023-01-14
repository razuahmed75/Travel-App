import 'package:flutter/material.dart';
import '../../../../config/colors.dart';
import '../../../../config/dimensions.dart';
import '../../offer/components/text_and_divider.dart';
import 'show_all_button.dart';

class MyFavorite extends StatelessWidget {
  const MyFavorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: dynamicWidth(27),
        right: dynamicWidth(27),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextAndDivider(
            text: 'My Favorites',
            fontSize: dynamicFont(20),
            textColor: AppColors.blackColor,
          ),

          /// show all
          ShowAll(
            text: 'Show all',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
