import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextFeild extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final Widget? suffixIcon, prefixIcon;
  final TextInputType? keyboardType;

  const MyTextFeild({
    super.key,
    required this.controller,
    required this.hintText,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.suffixIcon,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: Colors.white,
      keyboardType: keyboardType,
      obscureText: obscureText,
      style: GoogleFonts.roboto(
        color: Colors.white.withOpacity(0.9),
        fontSize: 15.sp,
        letterSpacing: 0.8,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        hintStyle: GoogleFonts.roboto(color: Colors.white.withOpacity(0.6)),
        contentPadding: EdgeInsets.only(
          top: 12,
          left: 20,
          right: 20,
          bottom: 20,
        ).r,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(27.5.w),
        ),
        fillColor: Colors.white.withOpacity(0.35),
        filled: true,
      ),
    );
  }
}
