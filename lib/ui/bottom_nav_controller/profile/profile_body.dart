import 'package:flutter/material.dart';
import '../../../config/dimensions.dart';
import 'components/discount_listview.dart';
import 'components/favorite_listview.dart';
import 'components/footer_section.dart';
import 'components/my_discounts_section.dart';
import 'components/my_favorite_section.dart';
import 'components/profile_header_and_userInfo.dart';
import 'components/subscription_card.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// header, profile info card
          ProfileHeader(),

          /// user subscription card
          SubscriptionCard(),
          SizedBox(height: dynamicHeight(30)),

          /// my discounts category section
          MyDiscounts(),

          /// discount listview
          DiscountListview(),
          SizedBox(height: dynamicHeight(53)),

          /// my favorites category section
          MyFavorite(),
          SizedBox(height: dynamicHeight(18)),

          /// favorites listview
          FavoriteListView(),
          SizedBox(height: dynamicHeight(22)),

          /// footer section
          FooterSection(),
          SizedBox(height: dynamicHeight(85)),
        ],
      ),
    );
  }
}
