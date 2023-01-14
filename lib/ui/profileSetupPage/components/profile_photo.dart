import 'package:flutter/material.dart';
import '../../../config/dimensions.dart';
import 'build_profile_photo.dart';

class ProfileSetupPhoto extends StatelessWidget {
  const ProfileSetupPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: dynamicHeight(60)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ProfilePhoto(
            onPressed: () {},
            image: Image.asset(
              'assets/images/gates4.jpg',
              height: dynamicHeight(100),
              width: dynamicHeight(100),
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
