import 'package:flutter/cupertino.dart';
import '../../../config/colors.dart';
import '../../../config/dimensions.dart';
import '../../../utils/big_text.dart';

class BuildCupertinoSwitch extends StatelessWidget {
  const BuildCupertinoSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: dynamicWidth(38),
        right: dynamicWidth(32),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BigText(
            text: 'Enable location for better experience',
            color: AppColors.whiteColor,
            size: Dimensions.font18 - 1,
            fontWeight: FontWeight.w400,
          ),
          CupertinoSwitch(value: true, onChanged: (_) {}),
        ],
      ),
    );
  }
}
