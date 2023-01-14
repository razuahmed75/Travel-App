import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../config/colors.dart';
import '../../config/dimensions.dart';
import '../../utils/big_text.dart';
import '../../utils/continue_button.dart';
import '../../utils/skip_button.dart';
import '../bottom_nav_controller/bottom_nav.dart';
import 'components/build_switch.dart';
import 'components/prefer_tile.dart';
import 'components/profile_photo.dart';
import 'components/textfield_section.dart';

class ProfileSetupBody extends StatelessWidget {
  const ProfileSetupBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          /// Almost There!
          Padding(
            padding: EdgeInsets.only(top: dynamicHeight(58)),
            child: BigText(
              text: 'Almost There!',
              fontWeight: FontWeight.w700,
              size: Dimensions.font30,
              color: AppColors.whiteColor,
            ),
          ),

          /// profile photo
          ProfileSetupPhoto(),

          /// Textfield section
          TextFieldSection(),

          /// what do you prefer?
          Container(
            margin: EdgeInsets.only(
              left: dynamicWidth(38),
              right: dynamicWidth(32),
            ),
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
          PreferSection(),
          SizedBox(height: Dimensions.height25),

          /// enable location for better experience
          BuildCupertinoSwitch(),
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
    );
  }
}
