import 'package:flutter/material.dart';
import '../../../../config/dimensions.dart';
import 'check_mark.dart';

class ProfilePhoto extends StatelessWidget {
  const ProfilePhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -dynamicHeight(60),
      left: 0,
      right: 0,
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          width: Dimensions.width100,
          height: Dimensions.width100,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/profile.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(Dimensions.width100 / 2),
          ),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              /// check mark
              CheckMark(),
            ],
          ),
        ),
      ),
    );
  }
}
