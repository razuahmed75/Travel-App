import 'package:flutter/material.dart';
import 'package:travel_app/config/dimensions.dart';
import 'package:travel_app/data/offer_category_model.dart';
import 'package:travel_app/ui/bottom_nav_controller/offer/components/offer_card.dart';
import 'package:travel_app/utils/expanded_container.dart';
import 'text_and_divider.dart';

class OfferScreenBody extends StatelessWidget {
  const OfferScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// discount and reward
            Row(
              children: [
                ExpandedContainer(
                  icon: 'assets/icons/my_discount.png',
                  text: 'My Discounts',
                  onPressed: () {},
                ),
                SizedBox(width: Dimensions.width15 - 1),
                ExpandedContainer(
                  icon: 'assets/icons/rewards.png',
                  text: 'Pending Rewards',
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: Dimensions.height35),

            /// Ongoing Campaigns
            TextAndDivider(text: 'Ongoing Campaigns'),

            /// listview
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: OfferList.length,
                itemBuilder: (_, index) {
                  return CardTile(index: index);
                }),
            SizedBox(height: Dimensions.height10),

            /// Upcoming Campaigns
            TextAndDivider(text: 'Upcoming Campaigns'),

            /// listview
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: OfferList.length,
                itemBuilder: (_, index) {
                  return CardTile(index: index);
                })
          ],
        ),
      ),
    );
  }
}
