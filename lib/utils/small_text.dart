import 'package:flutter/material.dart';
import 'package:travel_app/config/dimensions.dart';

class SmallText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? size;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextDecoration? decoration;
  final FontWeight? fontWeight;

  const SmallText({
    super.key,
    required this.text,
    this.color = const Color(0xFF9C9C9C),
    this.size,
    this.maxLines = 2,
    this.overflow = TextOverflow.ellipsis,
    this.decoration,
    this.fontWeight = FontWeight.w400,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      style: TextStyle(
        color: color,
        fontFamily: 'Arial',
        fontWeight: fontWeight,
        fontSize: size ?? Dimensions.font13,
        overflow: overflow,
        decoration: decoration,
      ),
    );
  }
}
