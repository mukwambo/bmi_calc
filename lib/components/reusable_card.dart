import 'package:flutter/material.dart';

/*
Since the input page has four card with the same dimensions, we create one design the reuse
te design four times, this prevents repetition in our code making it easily readable and maintainable
 */
class ReusableCard extends StatelessWidget {
  final Color cardColor;
  final Widget? cardChild;
  final void Function()?
      onPress; // Set this as nullable because it won't be required by all the cards
  const ReusableCard({
    super.key,
    required this.cardColor,
    this.cardChild,
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      /*
      Here we wrap our container with a GestureDetector instead of a TextButton
      comes with predefined settings that may not be compatible with our design. Since we only want to detect
      touch on the widget, the GestureDetector best fits for the job.
       */
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: cardColor,
        ),
        child: cardChild,
      ),
    );
  }
}
