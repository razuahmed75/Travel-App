import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/config/colors.dart';

class MyButton extends StatelessWidget {
  final String? title;
  final void Function()? onPressed;

  const MyButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        minWidth: double.maxFinite,
        height: 45.h,
        color: AppColors.mainColor,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.w)),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title!,
              style: GoogleFonts.roboto(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 5.w),
            SvgPicture.asset('assets/svg/arrow.svg'),
          ],
        ));
  }
}
