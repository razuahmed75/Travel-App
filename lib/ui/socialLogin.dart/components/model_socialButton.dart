import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SocialButton extends StatelessWidget {
  final String title;
  final String image;
  final void Function()? onPressed;
  const SocialButton({
    Key? key,
    required this.title,
    required this.image,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: onPressed,
          child: Stack(
            alignment: AlignmentDirectional.centerStart,
            children: [
              MaterialButton(
                minWidth: 275.w,
                height: 42.h,
                onPressed: onPressed,
                color: Colors.white.withOpacity(0.4),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.w),
                ),
                child: Text(
                  title,
                  style: GoogleFonts.roboto(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                width: 44.w,
                height: 44.w,
                padding: EdgeInsets.all(9.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  image,
                  height: 28.h,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
