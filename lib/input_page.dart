import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'top_row_card_style.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// Constant variables
const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xFFEB1555);
const theCardColor = Color(0xFF1D1E33);
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({
    super.key,
  });

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(children: [
        Expanded(
          child: Row(children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedGender = Gender.male;
                  });
                },
                child: ReusableCard(
                  cardColor: selectedGender == Gender.male
                      ? activeCardColor
                      : inactiveCardColor,
                  cardChild: const TopRowCardStyle(
                    genderIcon: FontAwesomeIcons.mars,
                    genderType: 'MALE',
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedGender = Gender.female;
                  });
                },
                child: ReusableCard(
                  cardColor: selectedGender == Gender.female
                      ? activeCardColor
                      : inactiveCardColor,
                  cardChild: const TopRowCardStyle(
                    genderIcon: FontAwesomeIcons.venus,
                    genderType: 'FEMALE',
                  ),
                ),
              ),
            ),
          ]),
        ),
        const Expanded(
          child: ReusableCard(
            cardColor: theCardColor,
          ),
        ),
        const Expanded(
          child: Row(children: [
            Expanded(
              child: ReusableCard(
                cardColor: theCardColor,
              ),
            ),
            Expanded(
              child: ReusableCard(
                cardColor: theCardColor,
              ),
            ),
          ]),
        ),
        Container(
          color: bottomContainerColor,
          margin: const EdgeInsets.only(top: 10),
          width: double.infinity,
          height: bottomContainerHeight,
        )
      ]),
    );
  }
}
