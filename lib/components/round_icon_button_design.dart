import 'package:flutter/material.dart';

/*
This is a separate class where we define our custom icon button using the properties used to create
a RawMaterialButton as defined in the flutter source code
 */
class RoundIconButton extends StatelessWidget {
  final IconData childIcon;
  final void Function() onPressed;
  const RoundIconButton(
      {super.key, required this.childIcon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      elevation: 0.0,
      shape: const CircleBorder(),
      fillColor: const Color(0xFF4C4F5E),
      onPressed: onPressed,
      child: Icon(childIcon),
    );
  }
}
