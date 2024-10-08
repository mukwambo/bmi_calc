import 'package:flutter/material.dart';
import '../constants.dart';

/*
Since the top row cards share the same design , we apply DRY principle by creating a separate
reusable class to be shared by the two cards
 */
class TopRowCardStyle extends StatelessWidget {
  final IconData genderIcon;
  final String genderType;
  const TopRowCardStyle({
    super.key,
    required this.genderIcon,
    required this.genderType,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIcon,
          size: 80.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          genderType,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
