class OfferCategory {
  final String image;
  final String title, subtitle, dateTime;

  const OfferCategory({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.dateTime,
  });
}

List<OfferCategory> OfferList = [
  OfferCategory(
    image: 'assets/images/offer.jpg',
    title: '16 Taka Ticket',
    subtitle:
        'Dhaka to Cox’s Bazaar bus ticket only for 16 taka.Spin the wheel to get this lucky discount! Dhaka to Cox’s Bazaar bus ticket only for 16 taka.',
    dateTime: '16 December',
  ),
  OfferCategory(
    image: 'assets/images/surprise.webp',
    title: 'Surprise Gift',
    subtitle:
        'Dhaka to Cox’s Bazaar bus ticket only for 16 taka. Spin the wheel to get this lucky discount!',
    dateTime: '16 December',
  ),
  OfferCategory(
    image: 'assets/images/valentines.jpg',
    title: 'Valentines Special',
    subtitle:
        'Dhaka to Cox’s Bazaar bus ticket only for 16 taka. Spin the wheel to get this lucky discount!',
    dateTime: '16 December',
  ),
];
