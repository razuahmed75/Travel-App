import 'package:flutter/material.dart';
import '../../../../config/dimensions.dart';
import '../../../../data/favorite_category_model.dart';
import 'favorite_tile.dart';

class FavoriteListView extends StatelessWidget {
  const FavoriteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: dynamicHeight(184),
      margin: EdgeInsets.only(
        left: dynamicWidth(27),
        right: dynamicWidth(27),
      ),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: favoriteList.length,
          itemBuilder: (_, index) {
            return FavoriteTile(index: index);
          }),
    );
  }
}
