import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'top_row_card_style.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

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
  int _height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(children: [
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  cardColor: selectedGender == Gender.male
                      ? kActiveCardColor
                      : kInactiveCardColor,
                  cardChild: const TopRowCardStyle(
                    genderIcon: FontAwesomeIcons.mars,
                    genderType: 'MALE',
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  cardColor: selectedGender == Gender.female
                      ? kActiveCardColor
                      : kInactiveCardColor,
                  cardChild: const TopRowCardStyle(
                    genderIcon: FontAwesomeIcons.venus,
                    genderType: 'FEMALE',
                  ),
                ),
              ),
            ]),
          ),
          Expanded(
            child: ReusableCard(
              cardColor: kTheCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        _height.toString(),
                        style: kLargeNumberTextStyle,
                      ),
                      const Text(
                        'cm',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  Slider(
                    value: _height.toDouble(),
                    min: kMinimum,
                    max: kMaximum,
                    activeColor: kSliderActiveColor,
                    inactiveColor: kSliderInactiveColor,
                    divisions: kDivisions,
                    onChanged: (double newValue) {
                      setState(() {
                        /*
                        Since the _height is an integer and the newValue is a double,
                        the round() method changes the newValue to the nearest whole number.
                         */
                        _height = newValue.round();
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          const Expanded(
            child: Row(children: [
              Expanded(
                child: ReusableCard(
                  cardColor: kTheCardColor,
                ),
              ),
              Expanded(
                child: ReusableCard(
                  cardColor: kTheCardColor,
                ),
              ),
            ]),
          ),
          Container(
            color: kBottomContainerColor,
            margin: const EdgeInsets.only(top: 10),
            width: double.infinity,
            height: kBottomContainerHeight,
          )
        ],
      ),
    );
  }
}
