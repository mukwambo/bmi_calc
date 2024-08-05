import 'package:flutter/material.dart';

// The label textStyle
const labelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

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
          style: labelTextStyle,
        )
      ],
    );
  }
}
