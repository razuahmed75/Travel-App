class DiscountCategory {
  final String imagePath, roomVarient, quantity;
  final String hotelName, dateTime;
  final String pending;
  final String discount, totalAmount;

  const DiscountCategory({
    required this.imagePath,
    required this.roomVarient,
    required this.quantity,
    required this.hotelName,
    required this.dateTime,
    required this.pending,
    required this.discount,
    required this.totalAmount,
  });
}

List<DiscountCategory> DiscountList = [
  DiscountCategory(
    imagePath: 'assets/popular_deals/room1.jpg',
    roomVarient: 'Couple Room',
    quantity: 'x 2',
    hotelName: 'Seagull Hotel',
    dateTime: '12 Dec',
    pending: 'pending',
    discount: '50%',
    totalAmount: '6,000 tk',
  ),
  DiscountCategory(
    imagePath: 'assets/popular_deals/room2.jpg',
    roomVarient: 'Single Room',
    quantity: 'x 3',
    hotelName: 'Seagull Hotel',
    dateTime: '17 Dec',
    pending: 'pending',
    discount: '60%',
    totalAmount: '9,000 tk',
  ),
];
