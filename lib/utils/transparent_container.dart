import 'package:flutter/cupertino.dart';
import 'package:travel_app/config/dimensions.dart';
import 'package:travel_app/utils/small_text.dart';

class TransParentCon extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final String text;
  final Color textColor;
  final BorderRadiusGeometry? borderRadius;

  const TransParentCon({
    super.key,
    required this.width,
    required this.height,
    required this.color,
    this.textColor = const Color(0xFFFFFFFF),
    required this.text,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius:
            borderRadius ?? BorderRadius.circular(Dimensions.r25 + 2.5),
      ),
      child: SmallText(
        text: text,
        color: textColor,
        size: Dimensions.font13,
      ),
    );
  }
}
