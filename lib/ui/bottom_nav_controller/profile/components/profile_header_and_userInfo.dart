import 'package:flutter/material.dart';
import '../../../../config/colors.dart';
import '../../../../config/dimensions.dart';
import '../../../../utils/big_text.dart';
import '../../../../utils/small_text.dart';
import 'body_color.dart';
import 'edit_icon.dart';
import 'header_image.dart';
import 'notification_icon.dart';
import 'profile_photo.dart';
import 'user_token.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        /// background image
        ProfileHeaderImage(),

        /// notification icon
        NotificationIcon(),

        /// body color
        BodyColor(),

        /// profile status
        Positioned(
          top: Dimensions.height217 - 40,
          left: 0,
          right: 0,
          child: Container(
            height: Dimensions.height160 - 6,
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: dynamicWidth(27)),
            decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(Dimensions.r16)),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                /// user profile photo
                ProfilePhoto(),

                /// user credential info
                Positioned(
                    top: Dimensions.height55,
                    left: 0,
                    right: 0,
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: Column(
                          children: [
                            /// name, active status
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                BigText(
                                  text: 'John Smith',
                                  size: Dimensions.font22,
                                ),
                                SizedBox(width: Dimensions.width10 / 2),
                                Container(
                                  alignment: Alignment.center,
                                  width: Dimensions.width40 + 3,
                                  height: Dimensions.height15 + 2,
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: AppColors.mainColor),
                                    borderRadius: BorderRadius.circular(
                                        Dimensions.r13 - 3),
                                  ),
                                  child: SmallText(
                                    text: 'Active',
                                    size: Dimensions.font13 - 2,
                                    color: AppColors.mainColor,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: dynamicHeight(7)),

                            /// user token
                            UserToken(),
                            SizedBox(height: dynamicHeight(8)),

                            /// user location
                            SmallText(
                              text: 'Dhaka, Bangladesh',
                              size: Dimensions.font13 - 2,
                            ),
                          ],
                        ),
                      ),
                    )),

                /// edit icon
                BuildEditButton(onTap: () {}),
              ],
            ),
          ),
        ),

        //
      ],
    );
  }
}
