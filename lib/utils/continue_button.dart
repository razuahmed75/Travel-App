import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class BuildContinueButton extends StatelessWidget {
  final String title;
  final void Function()? onPressed;
  const BuildContinueButton({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 151.w,
      height: 50.h,
      color: Color.fromARGB(255, 8, 186, 100),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(27.w)),
      onPressed: onPressed,
      child: Text(
        title,
        style: GoogleFonts.roboto(
          fontSize: 15.sp,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
    );
  }
}
