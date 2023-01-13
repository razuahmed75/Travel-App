import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/config/dimensions.dart';
import 'package:travel_app/ui/profileSetupPage/profile_setup_page.dart';
import 'package:travel_app/utils/my_textfield.dart';
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
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/images/Login Page.png',
                ))),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: Dimensions.height15 * 2),
                Image.asset('assets/images/logo1.png'),
                SizedBox(height: Dimensions.height300 + 50),

                /// Email sign in
                Text(
                  'Email sign in',
                  style: GoogleFonts.roboto(
                    fontSize: 28.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: Dimensions.height10 + 2),

                /// divider
                Container(
                  width: 50.w,
                  height: 2.h,
                  color: Colors.white.withOpacity(0.5),
                ),
                SizedBox(height: Dimensions.height25),

                /// TextField
                Container(
                  margin: EdgeInsets.only(
                      left: Dimensions.width24 + 6,
                      right: Dimensions.width24 + 6),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        MyTextFeild(
                          controller: _emailController,
                          hintText: 'Your email address',
                          obscureText: false,
                        ),
                        SizedBox(height: Dimensions.height10),
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
                SizedBox(height: Dimensions.height35 - 1),

                /// Continue button
                BuildMaterialButton(
                  title: 'Continue',
                  onPressed: () {
                    Get.to(() => ProfileSetupPage());
                  },
                ),
                SizedBox(height: Dimensions.height20),

                /// Forgot password?
                buildTextButton(title: 'Forgot Password?', onPressed: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }

  buildTextButton({
    required String? title,
    required void Function()? onPressed,
  }) {
    return TextButton(
        style: TextButton.styleFrom(minimumSize: Size(133.w, 16.h)),
        onPressed: onPressed,
        child: Text(
          title!,
          style: GoogleFonts.roboto(
            fontSize: 14.sp,
            color: Color.fromARGB(255, 8, 186, 100),
          ),
        ));
  }
}
