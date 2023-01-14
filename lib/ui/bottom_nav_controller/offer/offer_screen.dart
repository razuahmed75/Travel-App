import 'package:flutter/material.dart';
import 'package:travel_app/config/colors.dart';
import 'package:travel_app/utils/page_header.dart';
import 'package:travel_app/utils/small_text.dart';
import '../../../config/dimensions.dart';
import 'offer_body.dart';

class OfferScreen extends StatelessWidget {
  const OfferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(
          top: Dimensions.height15 * 4,
          left: Dimensions.width20,
          right: Dimensions.width20,
        ),
        child: Column(
          children: [
            /// header
            PageHeader(
              name: 'John Smith',
              Personstatus: SmallText(
                text: 'Active',
                color: AppColors.mainColor,
              ),
              firstIcon: 'assets/icons/bookmark.png',
            ),
            SizedBox(height: Dimensions.height20),

            /// body
            OfferScreenBody(),
          ],
        ),
      ),
    );
  }
}
