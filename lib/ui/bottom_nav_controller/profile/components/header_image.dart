import 'package:flutter/material.dart';
import '../../../../config/dimensions.dart';

class ProfileHeaderImage extends StatelessWidget {
  const ProfileHeaderImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: Dimensions.height217,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/images/Login Page.png'),
        fit: BoxFit.cover,
      )),
    );
  }
}
