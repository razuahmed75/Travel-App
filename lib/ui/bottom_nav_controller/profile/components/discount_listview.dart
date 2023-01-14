import 'package:flutter/material.dart';
import '../../../../config/dimensions.dart';
import '../../../../data/discount_category_model.dart';
import 'discountTile.dart';

class DiscountListview extends StatelessWidget {
  const DiscountListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: dynamicWidth(27),
        right: dynamicWidth(27),
      ),
      child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: DiscountList.length,
          itemBuilder: (_, index) {
            return DiscountTile(index: index);
          }),
    );
  }
}
