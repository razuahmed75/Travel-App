import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class BuildSkipButton extends StatelessWidget {
  final String? title;
  final void Function()? onPressed;
  const BuildSkipButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.w),
        )),
        child: Text(
          title!,
          style: GoogleFonts.roboto(
            fontSize: 11.sp,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ));
  }
}
