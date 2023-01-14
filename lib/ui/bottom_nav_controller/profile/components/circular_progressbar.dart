import 'package:circle_progress_bar/circle_progress_bar.dart';
import 'package:flutter/material.dart';
import '../../../../config/colors.dart';
import '../../../../config/dimensions.dart';
import '../../../../utils/small_text.dart';

class CircularProgress extends StatelessWidget {
  const CircularProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: dynamicHeight(100),
        child: RotationTransition(
          turns: new AlwaysStoppedAnimation(85 / 360),
          child: CircleProgressBar(
            backgroundColor: AppColors.iconColor,
            foregroundColor: AppColors.mainColor,
            value: 0.7,
            animationDuration: Duration(seconds: 2),
            // reversedDirection: true,
            child: Center(
                child: RotationTransition(
                    turns: new AlwaysStoppedAnimation(-85 / 360),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SmallText(
                          text: '120',
                          color: AppColors.mainColor,
                          size: dynamicFont(16),
                          fontWeight: FontWeight.bold,
                        ),
                        SmallText(
                          text: 'days remaining',
                          size: dynamicFont(10),
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ))),
          ),
        ));
  }
}
