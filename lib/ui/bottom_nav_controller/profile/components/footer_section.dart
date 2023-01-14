import 'package:flutter/material.dart';
import '../../../../config/dimensions.dart';
import 'footer_card.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: dynamicWidth(27)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FooterCard(
                onTap: () {},
                text: 'About Us',
                imagePath: 'assets/icons/about.png',
              ),
              FooterCard(
                onTap: () {},
                text: 'Terms of \n Services',
                imagePath: 'assets/icons/terms.png',
              ),
              FooterCard(
                onTap: () {},
                text: 'Privacy \n Policy',
                imagePath: 'assets/icons/privacy.png',
              ),
            ],
          ),
          SizedBox(height: dynamicHeight(19)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FooterCard(
                onTap: () {},
                text: 'My Payments',
                imagePath: 'assets/icons/wallet.png',
              ),
              FooterCard(
                onTap: () {},
                text: 'Settings',
                imagePath: 'assets/icons/settings.png',
              ),
              FooterCard(
                onTap: () {},
                text: 'Help &\n Support',
                imagePath: 'assets/icons/handshake.png',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
