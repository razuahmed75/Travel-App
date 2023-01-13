import 'package:flutter/cupertino.dart';
import 'package:travel_app/config/dimensions.dart';

class BigText extends StatelessWidget {
  final String text;
  final double? size;
  final Color? color;
  final FontWeight? fontWeight;

  const BigText({
    super.key,
    required this.text,
    this.size,
    this.color = const Color(0xFF131B1A),
    this.fontWeight = FontWeight.w500,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Arial',
        fontWeight: fontWeight,
        color: color,
        fontSize: size ?? Dimensions.font18,
      ),
    );
  }
}
