import 'package:flutter/material.dart';
import 'package:travel_app/config/colors.dart';
import 'package:travel_app/config/dimensions.dart';
import 'package:travel_app/utils/big_text.dart';
import 'package:travel_app/utils/icon_and_text.dart';
import 'package:travel_app/utils/page_header.dart';
import 'package:travel_app/utils/single_icon.dart';
import 'components/home_page_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      body: Container(
        margin: EdgeInsets.only(
          top: Dimensions.height15 * 4,
          left: Dimensions.width24,
          right: Dimensions.width24,
        ),
        child: Column(
          children: [
            /// header
            PageHeader(
                name: 'Hi, John!',
                Personstatus: IconAndText(text: 'Dhaka'),
                firstIcon: 'assets/icons/scanner.png'),
            SizedBox(height: Dimensions.height20),

            /// body
            HomePageBody(),
          ],
        ),
      ),
    );
  }
}
