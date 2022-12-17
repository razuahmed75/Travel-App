import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

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
        minWidth: 300.w,
        height: 45.h,
        color: Color.fromARGB(255, 8, 186, 100),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.w)),
        onPressed: onPressed,
        child: Row(
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
