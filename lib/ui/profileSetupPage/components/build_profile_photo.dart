import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ProfilePhoto extends StatelessWidget {
  final Widget image;
  final void Function()? onPressed;

  const ProfilePhoto({
    Key? key,
    required this.image,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          children: [
            Container(
              padding: EdgeInsets.all(2.w),
              decoration: BoxDecoration(
                color: Colors.grey.shade700,
                shape: BoxShape.circle,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(90.w),
                child: image,
              ),
            ),
            Positioned(
                bottom: 10,
                right: 0,
                child: GestureDetector(
                  onTap: onPressed,
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade800, shape: BoxShape.circle),
                      padding: EdgeInsets.all(20 / 2.w),
                      child: SvgPicture.asset(
                        'assets/images/camera.svg',
                        color: Colors.white,
                        height: 17.h,
                      )),
                ))
          ],
        ),
      ],
    );
  }
}
