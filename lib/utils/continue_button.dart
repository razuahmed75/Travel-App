import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/config/colors.dart';

class BuildMaterialButton extends StatelessWidget {
  final String title;
  final void Function()? onPressed;
  final double? minWidth, height;
  final double? fontSize, radius;
  final FontWeight? fontWeight;

  const BuildMaterialButton({
    Key? key,
    required this.title,
    required this.onPressed,
    this.minWidth,
    this.height,
    this.fontSize,
    this.fontWeight,
    this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.all(0),
      minWidth: minWidth ?? 151.w,
      height: height ?? 50.h,
      color: AppColors.mainColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? 25.r)),
      onPressed: onPressed,
      child: Text(
        title,
        style: GoogleFonts.roboto(
          fontSize: fontSize ?? 16.sp,
          fontWeight: fontWeight ?? FontWeight.w500,
          color: Colors.white,
        ),
      ),
    );
  }
}
