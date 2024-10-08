import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
/*
Given the many constants we use in the app, its preferred you crate a
separate class for the to allow reusability
 */

// Constant variables
const kBottomContainerHeight = 80.0;
const kBottomContainerColor = Color(0xFFEB1555);
const kTheCardColor = Color(0xFF1D1E33);
const kActiveCardColor = Color(0xFF1D1E33);
const kInactiveCardColor = Color(0xFF111328);

// The label textStyle
const kLabelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

// TextStyle fir the large numbers
const kLargeNumberTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
);

// The button textStyle
const kButtonTextStyle = TextStyle(
  fontSize: 25.0,
  fontWeight: FontWeight.bold,
);

// Slider constant values
const kMinimum = 120.0;
const kMaximum = 220.0;
const kDivisions = 20;

// Slider active and inactive colors
const kSliderActiveColor =
    Color(0xFFFFFFFF); // The color between the thumb and the kMinimum
const kSliderInactiveColor =
    Color(0xFF8D8E98); // The color between the thumb and the kMaximum
const kThumbOverlayColor = Color(0x29EB1555);

// The result title text style
const kResultTitleTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.bold,
);

// The green result label textStyle
const kResultLabelTextStyle = TextStyle(
  fontSize: 22.0,
  fontWeight: FontWeight.bold,
  color: Color(0xFF24D876),
);

// BMI reading textStyle
const kBMITextStyle = TextStyle(
  fontSize: 100.0,
  fontWeight: FontWeight.bold,
);

// The body textStyle
const kBodyTextStyle = TextStyle(
  fontSize: 22.0,
);
