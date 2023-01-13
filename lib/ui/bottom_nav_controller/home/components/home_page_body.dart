import 'package:flutter/material.dart';
import '../../../../config/dimensions.dart';
import '../../../../utils/around_the_world.dart';
import '../../../../utils/catagories_text.dart';
import '../../../../utils/popular_deals.dart';
import 'circle_tiles.dart';
import 'search_bar.dart';
import 'slider.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            /// search bar
            SearchBar(),
            SizedBox(height: Dimensions.height25 + 2),

            /// categories list view
            Container(
              height: Dimensions.height20 * 5,
              child: ListView.builder(
                  itemCount: 8,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) {
                    return CircleTiles(index: index);
                  }),
            ),
            SizedBox(height: Dimensions.height10 * 3),

            /// offers for you
            CatgoriesText(text: 'Offers for you'),
            SizedBox(height: Dimensions.height15 - 2),

            /// slider
            SliderSection(),
            SizedBox(height: Dimensions.height10 * 3),

            /// Popular Deals
            CatgoriesText(text: 'Popular Deals'),
            SizedBox(height: Dimensions.height15 - 2),

            /// Popular place listTile
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (_, index) {
                  return PopularPlaceTile(index: index);
                }),
            SizedBox(height: Dimensions.height10),

            /// around the world text
            CatgoriesText(text: 'Around the world'),
            SizedBox(height: Dimensions.height15 - 2),

            /// around the world listTile
            AroundTheWorldTile(),
            AroundTheWorldTile(title: 'Longest Sea Beach'),
          ],
        ),
      ),
    );
  }
}
