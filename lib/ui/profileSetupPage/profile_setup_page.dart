import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/continue_button.dart';
import '../../utils/my_textfield.dart';
import '../../utils/skip_button.dart';
import 'components/build_profile_photo.dart';

class ProfileSetupPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  ProfileSetupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background.jpg'),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: ListView(
          children: [
            /// Almost There!
            Padding(
              padding: const EdgeInsets.only(top: 40).r,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Almost There!',
                    style: GoogleFonts.roboto(
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),

            /// profile photo
            Padding(
              padding: const EdgeInsets.only(top: 60).r,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ProfilePhoto(
                    onPressed: () {},
                    image: Image.asset(
                      'assets/images/gates4.jpg',
                      height: 100.h,
                      width: 100.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),

            /// Textfield section

            Padding(
              padding: const EdgeInsets.only(top: 20, left: 35, right: 35).r,
              child: AspectRatio(
                aspectRatio: 1 / 2,
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      /// name
                      MyTextFeild(
                        controller: _nameController,
                        hintText: 'Full Name',
                      ),

                      /// phone
                      MyTextFeild(
                          controller: _phoneController,
                          hintText: 'Phone',
                          keyboardType: TextInputType.phone,
                          prefixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(width: 8),
                              Text(
                                '+880',
                                style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16.sp,
                                ),
                              ),
                              SizedBox(width: 10.w),
                              divider(),
                              SizedBox(width: 10.w),
                            ],
                          )),

                      /// birthday
                      Container(
                        width: 290.w,
                        height: 45.h,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.35),
                          borderRadius: BorderRadius.circular(27.5.w),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Birthday',
                              style: GoogleFonts.roboto(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 16.sp,
                              ),
                            ),
                            text(title: 'day'),
                            divider(),
                            text(title: 'month'),
                            divider(),
                            text(title: 'year'),
                          ],
                        ),
                      ),

                      /// gender and city
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          buildContainer(
                            width: 100.w,
                            height: 45.h,
                            child: Text(
                              'Gender',
                              style: GoogleFonts.roboto(
                                color: Colors.white.withOpacity(0.6),
                                fontWeight: FontWeight.w400,
                                fontSize: 16.sp,
                              ),
                            ),
                          ),
                          SizedBox(width: 8.w),
                          buildContainer(
                            width: 150.w,
                            height: 45.h,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'City',
                                  style: GoogleFonts.roboto(
                                    color: Colors.white.withOpacity(0.6),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16.sp,
                                  ),
                                ),
                                Text(
                                  'Dhaka',
                                  style: GoogleFonts.roboto(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12.h),

                      /// choose option for users
                      Text(
                        'Vendor, Lawyer, Engineer should upload their Voter Id (Not User)',
                        style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp,
                        ),
                      ),
                      buildButton(title: 'Choose File', onPressed: () {}),
                      Text(
                        'Engineer, Lawyer Should provide their Identity Card(Not Vendor / user)',
                        style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp,
                        ),
                      ),
                      buildButton(title: 'Choose File', onPressed: () {}),

                      BuildContinueButton(title: 'Continue', onPressed: () {}),
                      BuildSkipButton(title: 'Skip for now', onPressed: () {}),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  MaterialButton buildButton({
    required String? title,
    required void Function()? onPressed,
  }) {
    return MaterialButton(
      minWidth: 290.w,
      height: 45.h,
      color: Colors.white.withOpacity(0.4),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(27.5.w),
      ),
      onPressed: onPressed,
      child: Row(
        children: [
          Text(
            title!,
            style: GoogleFonts.roboto(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
            ),
          ),
          Image.asset(
            'assets/images/drop.png',
            height: 35.h,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }

  Container buildContainer({
    required double? width,
    required double? height,
    required Widget? child,
  }) {
    return Container(
      alignment: Alignment(0, 0),
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.35),
        borderRadius: BorderRadius.circular(27.5.w),
      ),
      child: child,
    );
  }

  Container divider() {
    return Container(
      height: 20.h,
      width: 1.w,
      color: Colors.white.withOpacity(0.6),
    );
  }

  text({String? title}) {
    return Text(
      title!,
      style: GoogleFonts.roboto(
        color: Colors.white.withOpacity(0.6),
        fontWeight: FontWeight.w400,
        fontSize: 14.sp,
      ),
    );
  }
}
