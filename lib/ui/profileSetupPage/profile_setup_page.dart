import 'package:flutter/material.dart';
import 'profile_setup_body.dart';

class ProfileSetupPage extends StatelessWidget {
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
        body: ProfileSetupBody(),
      ),
    );
  }
}
