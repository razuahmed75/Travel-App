import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../config/dimensions.dart';
import '../../../utils/my_textfield.dart';

class TextFieldSection extends StatelessWidget {
  const TextFieldSection({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final _nameController = TextEditingController();
    final _phoneController = TextEditingController();

    return Padding(
      padding: EdgeInsets.only(
          top: dynamicHeight(39),
          left: dynamicWidth(32),
          right: dynamicWidth(32)),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            /// name
            MyTextFeild(
              controller: _nameController,
              hintText: 'Full Name',
            ),
            SizedBox(height: Dimensions.height10),

            /// phone
            MyTextFeild(
                controller: _phoneController,
                hintText: 'Phone',
                keyboardType: TextInputType.phone,
                prefixIcon: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(width: 8),
                    Text(
                      '+880',
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 16.sp,
                      ),
                    ),
                    SizedBox(width: 10.w),
                    divider(),
                    SizedBox(width: 10.w),
                  ],
                )),
            SizedBox(height: Dimensions.height10),

            /// birthday
            Container(
              width: double.maxFinite,
              height: 45.h,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.35),
                borderRadius: BorderRadius.circular(27.5.w),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Birthday',
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp,
                    ),
                  ),
                  text(title: 'day'),
                  divider(),
                  text(title: 'month'),
                  divider(),
                  text(title: 'year'),
                ],
              ),
            ),
            SizedBox(height: Dimensions.height10),

            /// gender and city
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildContainer(
                  width: 80.w,
                  height: 45.h,
                  child: Text(
                    'Gender',
                    style: GoogleFonts.roboto(
                      color: Colors.white.withOpacity(0.6),
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
                SizedBox(width: Dimensions.width10),
                Expanded(
                  child: buildContainer(
                    height: 45.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'City',
                          style: GoogleFonts.roboto(
                            color: Colors.white.withOpacity(0.6),
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp,
                          ),
                        ),
                        Text(
                          'Dhaka',
                          style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: Dimensions.height15 * 2),
          ],
        ),
      ),
    );
  }

  /// build methods

  Widget buildContainer({
    double? width,
    required double? height,
    required Widget? child,
  }) {
    return Container(
      alignment: Alignment.center,
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.35),
        borderRadius: BorderRadius.circular(27.5.w),
      ),
      child: child,
    );
  }

  Container divider() {
    return Container(
      height: 20.h,
      width: 1.w,
      color: Colors.white.withOpacity(0.6),
    );
  }

  text({String? title}) {
    return Text(
      title!,
      style: GoogleFonts.roboto(
        color: Colors.white.withOpacity(0.6),
        fontWeight: FontWeight.w400,
        fontSize: 14.sp,
      ),
    );
  }
}
