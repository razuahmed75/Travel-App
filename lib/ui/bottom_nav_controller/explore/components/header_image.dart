import 'package:flutter/material.dart';
import '../../../../config/dimensions.dart';

class ExploreHeaderImage extends StatelessWidget {
  const ExploreHeaderImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      child: Container(
        width: double.maxFinite,
        height: Dimensions.height217,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/Login Page.png'),
          fit: BoxFit.cover,
        )),
      ),
    );
  }
}
