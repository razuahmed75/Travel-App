import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rodcem/ui/emailLogin/email_login.dart';
import '../../utils/skip_button.dart';
import 'components/model_socialButton.dart';

class SocialLoginPage extends StatelessWidget {
  const SocialLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
                  width: size.width,
                  height: size.height,
                ),

                /// header logo
                Positioned(
                    left: 0.39.sw,
                    top: 50,
                    child: Image.asset('assets/images/logo.png')),

                /// sign in to rodcem
                Positioned(
                  top: 350,
                  left: 0.16.sw,
                  child: Text(
                    'Sign in to Rodcem',
                    style: GoogleFonts.roboto(
                      fontSize: 28.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),

                /// divider
                Positioned(
                  top: 402,
                  left: 0.38.sw,
                  child: Container(
                    width: 50.w,
                    height: 2.h,
                    color: Colors.white.withOpacity(0.5),
                  ),
                ),

                /// social button
                Positioned(
                  top: 462,
                  left: 0.10.sw,
                  child: SizedBox(
                    height: 160.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SocialButton(
                          onPressed: () {},
                          title: 'Continue with Google',
                          image: 'assets/images/google.png',
                        ),
                        SocialButton(
                          onPressed: () {},
                          title: 'Continue with Facebook',
                          image: 'assets/images/facebook.png',
                        ),
                        SocialButton(
                          onPressed: () {},
                          title: 'Continue with Apple',
                          image: 'assets/images/apple.png',
                        )
                      ],
                    ),
                  ),
                ),

                /// continue with emial
                buildButton(
                  title: 'Continue with Email',
                  onPressed: () {
                    Get.to(() => EmailLoginPage());
                  },
                ),

                /// skip for now
                Positioned(
                  bottom: 30,
                  left: 150,
                  child: BuildSkipButton(
                    title: 'Skip for now',
                    onPressed: () {},
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Positioned buildButton({String? title, void Function()? onPressed}) {
    return Positioned(
      bottom: 90,
      left: 95,
      child: SizedBox(
        width: 190.w,
        height: 40.h,
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.w)),
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
      ),
    );
  }
}
