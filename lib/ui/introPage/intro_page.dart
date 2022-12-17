import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rodcem/ui/socialLogin.dart/social_login.dart';
import 'package:rodcem/utils/my_button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(systemNavigationBarColor: Colors.black));
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                /// background image
                Image.asset(
                  'assets/images/background.jpg',
                  fit: BoxFit.cover,
                  width: ScreenUtil().screenWidth,
                  height: ScreenUtil().screenHeight,
                ),

                /// header logo
                Positioned(
                    left: 0.39.sw,
                    top: 50,
                    child: Image.asset('assets/images/logo.png')),

                /// Welcome to Rodcem
                Positioned(
                  top: 585,
                  left: 0.11.sw,
                  child: Text(
                    'Welcome to Rodcem',
                    style: GoogleFonts.roboto(
                      fontSize: 28.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),

                /// divider
                Positioned(
                  bottom: 200,
                  left: 0.35.sw,
                  child: Container(
                    width: 100.w,
                    height: 2.h,
                    color: Colors.white.withOpacity(0.5),
                  ),
                ),

                /// Get Started button
                Positioned(
                  top: 700,
                  left: 25,
                  child: MyButton(
                      title: 'Get Started Now',
                      onPressed: () {
                        Get.to(() => SocialLoginPage());
                      }),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
