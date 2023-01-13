import 'package:flutter/material.dart';
import '../config/dimensions.dart';
import 'big_text.dart';
import 'single_icon.dart';

class PageHeader extends StatelessWidget {
  final String name;
  final Widget Personstatus;
  final String firstIcon;

  const PageHeader({
    super.key,
    required this.name,
    required this.Personstatus,
    required this.firstIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            /// profile photo
            Container(
              height: Dimensions.height45 + 3,
              width: Dimensions.height45 + 3,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(Dimensions.height45 + 3 / 2),
                image: DecorationImage(
                  image: AssetImage('assets/images/profile.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: Dimensions.width15 + 1),

            /// name and status
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BigText(
                  text: name,
                ),
                SizedBox(height: Dimensions.height5 - 2),
                Personstatus,
              ],
            ),
          ],
        ),

        /// icons row
        HeaderIcons(
          firstIcon: firstIcon,
          secondIcon: Icons.notifications_outlined,
        ),
      ],
    );
  }
}
