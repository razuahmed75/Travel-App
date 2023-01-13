import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/ui/emailLogin/email_login.dart';
import 'package:travel_app/utils/big_text.dart';
import '../../config/dimensions.dart';
import '../../utils/skip_button.dart';
import 'components/model_socialButton.dart';

class SocialLoginPage extends StatelessWidget {
  const SocialLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
              SizedBox(height: Dimensions.height300 - 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /// sign in to travel_app
                  BigText(
                    text: 'Sign in to DD',
                    size: Dimensions.font30,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                  SizedBox(height: Dimensions.height15 + 2),

                  /// divider
                  Container(
                    width: 50.w,
                    height: 2.h,
                    color: Colors.white.withOpacity(0.5),
                  ),
                  SizedBox(height: Dimensions.height25 * 2),

                  /// social button
                  SocialButton(
                    onPressed: () {},
                    title: 'Continue with Google',
                    image: 'assets/images/google.png',
                  ),
                  SizedBox(height: Dimensions.height15 - 2),
                  SocialButton(
                    onPressed: () {},
                    title: 'Continue with Facebook',
                    image: 'assets/images/facebook.png',
                  ),
                  SizedBox(height: Dimensions.height15 - 2),
                  SocialButton(
                    onPressed: () {},
                    title: 'Continue with Apple',
                    image: 'assets/images/apple.png',
                  ),
                  SizedBox(height: Dimensions.height25 * 2 + 2),

                  /// continue with emial
                  _buildButton(
                    title: 'Continue with Email',
                    onPressed: () {
                      Get.to(() => EmailLoginPage());
                    },
                  ),

                  /// skip for now
                  BuildSkipButton(
                    title: 'Skip for now',
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButton({String? title, void Function()? onPressed}) {
    return SizedBox(
      width: 190.w,
      height: 40.h,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.w)),
          side: BorderSide(
            color: Colors.white.withOpacity(0.5),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          title!,
          style: GoogleFonts.roboto(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
