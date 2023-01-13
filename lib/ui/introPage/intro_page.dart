import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/config/dimensions.dart';
import 'package:travel_app/ui/socialLogin.dart/social_login.dart';
import 'package:travel_app/utils/my_button.dart';
import 'package:travel_app/utils/small_text.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(systemNavigationBarColor: Colors.black));
    return Container(
      /// background image
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/Get Started.png',
              ))),

      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: Dimensions.height15 * 2),
              Image.asset('assets/images/logo1.png'),
              SizedBox(height: Dimensions.height500 - 20),
              Column(
                children: [
                  /// Welcome
                  Text(
                    'Welcome to the\n world of discounts',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                      fontSize: 28.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: Dimensions.height15),
                  SmallText(
                      text:
                          'Make your travel simple. Get awesome deals and save\n more than 60% of travel cost! Enjoy your Traveling!'),
                  SizedBox(height: Dimensions.height10),

                  /// divider
                  Container(
                    width: 100.w,
                    height: 2.h,
                    color: Colors.white.withOpacity(0.5),
                  ),
                  SizedBox(height: Dimensions.height20 * 2),

                  /// Get Started button
                  Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: Dimensions.width40),
                    child: MyButton(
                        title: 'Get Started Now',
                        onPressed: () {
                          Get.to(() => SocialLoginPage());
                        }),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
