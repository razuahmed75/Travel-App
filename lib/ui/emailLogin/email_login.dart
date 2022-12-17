import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rodcem/ui/profileSetupPage/profile_setup_page.dart';
import 'package:rodcem/utils/my_textfield.dart';
import '../../utils/continue_button.dart';

class EmailLoginPage extends StatefulWidget {
  const EmailLoginPage({super.key});

  @override
  State<EmailLoginPage> createState() => _EmailLoginPageState();
}

class _EmailLoginPageState extends State<EmailLoginPage> {
  final _emailController = TextEditingController();
  final _passController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
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
                      left: 0.4.sw,
                      top: 50,
                      child: Image.asset('assets/images/logo.png')),

                  /// Email sign in
                  Positioned(
                    top: 0.5.sh,
                    left: 0.3.sw,
                    child: Text(
                      'Email sign in',
                      style: GoogleFonts.roboto(
                        fontSize: 28.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  /// divider
                  Positioned(
                    top: 0.56.sh,
                    left: 0.45.sw,
                    child: Container(
                      width: 50.w,
                      height: 2.h,
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),

                  /// TextField
                  Positioned(
                    top: 0.59.sh,
                    left: 0.1.sw,
                    child: SizedBox(
                      width: 290.w,
                      height: 110.h,
                      child: Form(
                        key: _formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            MyTextFeild(
                              controller: _emailController,
                              hintText: 'Your email address',
                              obscureText: false,
                            ),
                            MyTextFeild(
                              controller: _passController,
                              obscureText: _obscureText,
                              hintText: 'A secure password',
                              suffixIcon: IconButton(
                                  onPressed: () {},
                                  icon: IconButton(
                                      padding: EdgeInsets.all(0),
                                      onPressed: () {
                                        setState(() {
                                          _obscureText = !_obscureText;
                                        });
                                      },
                                      icon: Icon(
                                        _obscureText == true
                                            ? Icons.visibility_off_outlined
                                            : Icons.visibility_outlined,
                                        color: Colors.white.withOpacity(0.6),
                                      ))),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),

                  /// Continue button
                  Positioned(
                    bottom: 0.13.sh,
                    left: 0.3.sw,
                    child: BuildContinueButton(
                      title: 'Continue',
                      onPressed: () {
                        Get.to(() => ProfileSetupPage());
                      },
                    ),
                  ),

                  /// Forgot password?
                  buildTextButton(title: 'Forgot Password?', onPressed: () {}),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  buildTextButton({
    required String? title,
    required void Function()? onPressed,
  }) {
    return Positioned(
        bottom: 0.05.sh,
        left: 0.32.sw,
        child: TextButton(
            style: TextButton.styleFrom(minimumSize: Size(133.w, 16.h)),
            onPressed: onPressed,
            child: Text(
              title!,
              style: GoogleFonts.roboto(
                fontSize: 14.sp,
                color: Color.fromARGB(255, 8, 186, 100),
              ),
            )));
  }
}
