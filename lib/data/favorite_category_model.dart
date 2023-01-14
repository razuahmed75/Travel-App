class FavoriteCategory {
  final String imagePath, discount;
  final int starCount;
  final String hotelName, locationName;

  const FavoriteCategory({
    required this.imagePath,
    required this.discount,
    required this.starCount,
    required this.hotelName,
    required this.locationName,
  });
}

List<FavoriteCategory> favoriteList = [
  FavoriteCategory(
    imagePath: 'assets/popular_deals/room2.jpg',
    discount: '50%',
    starCount: 5,
    hotelName: 'Seagull Hotel',
    locationName: 'Cox’s Bazaar',
  ),
  FavoriteCategory(
    imagePath: 'assets/popular_deals/room2.jpg',
    discount: '30%',
    starCount: 4,
    hotelName: 'Seagull Hotel',
    locationName: 'Dhaka',
  ),
];
