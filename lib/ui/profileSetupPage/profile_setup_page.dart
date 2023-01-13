import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/config/colors.dart';
import 'package:travel_app/config/dimensions.dart';
import 'package:travel_app/ui/bottom_nav_controller/bottom_nav.dart';
import 'package:travel_app/utils/big_text.dart';
import 'package:travel_app/utils/transparent_container.dart';
import '../../utils/continue_button.dart';
import '../../utils/my_textfield.dart';
import '../../utils/skip_button.dart';
import '../bottom_nav_controller/home/home_screen.dart';
import 'components/build_profile_photo.dart';

class ProfileSetupPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  ProfileSetupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/Login Page.png'),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              /// Almost There!
              Padding(
                padding: const EdgeInsets.only(top: 40).r,
                child: BigText(
                  text: 'Almost There!',
                  fontWeight: FontWeight.w700,
                  size: Dimensions.font30,
                  color: AppColors.whiteColor,
                ),
              ),

              /// profile photo
              Padding(
                padding: const EdgeInsets.only(top: 25).r,
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
                padding: const EdgeInsets.only(top: 20, left: 25, right: 25).r,
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      /// name
                      MyTextFeild(
                        controller: _nameController,
                        hintText: 'Full Name',
                      ),
                      SizedBox(height: Dimensions.height10),

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
                      SizedBox(height: Dimensions.height10),

                      /// birthday
                      Container(
                        width: double.maxFinite,
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
                      SizedBox(height: Dimensions.height10),

                      /// gender and city
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          buildContainer(
                            width: 80.w,
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
                          SizedBox(width: Dimensions.width10),
                          Expanded(
                            child: buildContainer(
                              height: 45.h,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
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
                          ),
                        ],
                      ),
                      SizedBox(height: Dimensions.height15 * 2),

                      /// what do you prefer?
                      Container(
                        margin: EdgeInsets.only(left: Dimensions.width10 / 2.2),
                        child: Row(
                          children: [
                            BigText(
                              text: 'What do you prefer?',
                              size: Dimensions.font18 - 1,
                              color: AppColors.whiteColor,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: Dimensions.height10),
                      Row(
                        children: [
                          TransParentCon(
                            text: 'Mountains',
                            width: Dimensions.width91,
                            height: Dimensions.height45,
                            color: AppColors.whiteColor.withOpacity(0.4),
                          ),
                          SizedBox(width: Dimensions.width10 - 2),
                          TransParentCon(
                            text: 'Rivers',
                            width: Dimensions.width64 - 3,
                            height: Dimensions.height45,
                            color: AppColors.whiteColor.withOpacity(0.4),
                          ),
                          SizedBox(width: Dimensions.width10 - 2),
                          TransParentCon(
                            text: 'Desert',
                            textColor: AppColors.mainColor,
                            width: Dimensions.width64 + 1,
                            height: Dimensions.height45,
                            color: AppColors.whiteColor,
                          ),
                          SizedBox(width: Dimensions.width10 - 2),
                          TransParentCon(
                            text: 'Sea',
                            textColor: AppColors.mainColor,
                            width: Dimensions.width64 - 10,
                            height: Dimensions.height45 - 5,
                            color: AppColors.whiteColor,
                          ),
                        ],
                      ),
                      SizedBox(height: Dimensions.height25),

                      /// enable location for better experience
                      Container(
                        margin: EdgeInsets.only(left: Dimensions.width10 / 2),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            BigText(
                              text: 'Enable location for better experience',
                              color: AppColors.whiteColor,
                              size: Dimensions.font18 - 1,
                              fontWeight: FontWeight.w400,
                            ),
                            CupertinoSwitch(value: true, onChanged: (_) {}),
                          ],
                        ),
                      ),
                      SizedBox(height: Dimensions.height25),

                      /// buttons
                      BuildMaterialButton(
                          title: 'Continue',
                          onPressed: () {
                            Get.to(() => BottomNavController());
                          }),

                      BuildSkipButton(title: 'Skip for now', onPressed: () {}),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildContainer({
    double? width,
    required double? height,
    required Widget? child,
  }) {
    return Container(
      alignment: Alignment.center,
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
