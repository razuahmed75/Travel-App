class CategoryPlace {
  final String image, title, locationName, availabeOffer;
  final String categoriesName1, categoriesName2, reviewCount;
  final String discountText, totalAmount, discountAmount;
  final int rating;

  const CategoryPlace({
    required this.image,
    required this.title,
    required this.locationName,
    required this.categoriesName1,
    required this.categoriesName2,
    required this.reviewCount,
    required this.discountText,
    required this.totalAmount,
    required this.discountAmount,
    required this.rating,
    required this.availabeOffer,
  });
}

List<CategoryPlace> placeTile = [
  CategoryPlace(
    image: 'assets/popular_deals/hotel.jpg',
    title: 'Seagull Hotel',
    locationName: 'Cox’s Bazaar',
    categoriesName1: 'Hotel',
    categoriesName2: 'Resturent',
    rating: 5,
    reviewCount: '131 Reviews',
    discountText: '50%',
    totalAmount: '6,000 tk',
    discountAmount: '20,000 tk',
    availabeOffer: 'available offer',
  ),
  CategoryPlace(
    image: 'assets/popular_deals/place1.jpg',
    title: 'VistaBay Resort',
    locationName: 'Chattogram',
    categoriesName1: 'Resort',
    categoriesName2: 'Resturent',
    rating: 3,
    reviewCount: '1k+ Reviews',
    discountText: '40%',
    totalAmount: '12,000 tk',
    discountAmount: '20,000 tk',
    availabeOffer: 'available offer',
  ),
  CategoryPlace(
    image: 'assets/popular_deals/place2.jpg',
    title: 'Abc Hotel Service',
    locationName: 'Dhaka',
    categoriesName1: 'Resort',
    categoriesName2: 'Resturent',
    rating: 4,
    reviewCount: '1k+ Reviews',
    discountText: '60%',
    totalAmount: '4,000 tk',
    discountAmount: '10,000 tk',
    availabeOffer: 'available offer',
  ),
  CategoryPlace(
    image: 'assets/popular_deals/hotel.jpg',
    title: 'Seagull Hotel',
    locationName: 'Cox’s Bazaar',
    categoriesName1: 'Hotel',
    categoriesName2: 'Resturent',
    rating: 5,
    reviewCount: '131 Reviews',
    discountText: '50%',
    totalAmount: '6,000 tk',
    discountAmount: '20,000 tk',
    availabeOffer: 'available offer',
  ),
  CategoryPlace(
    image: 'assets/popular_deals/place1.jpg',
    title: 'VistaBay Resort',
    locationName: 'Chattogram',
    categoriesName1: 'Resort',
    categoriesName2: 'Resturent',
    rating: 3,
    reviewCount: '1k+ Reviews',
    discountText: '40%',
    totalAmount: '12,000 tk',
    discountAmount: '20,000 tk',
    availabeOffer: 'available offer',
  ),
  CategoryPlace(
    image: 'assets/popular_deals/place2.jpg',
    title: 'Abc Hotel Service',
    locationName: 'Dhaka',
    categoriesName1: 'Resort',
    categoriesName2: 'Resturent',
    rating: 4,
    reviewCount: '1k+ Reviews',
    discountText: '60%',
    totalAmount: '4,000 tk',
    discountAmount: '10,000 tk',
    availabeOffer: 'available offer',
  ),
];