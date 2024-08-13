import 'package:flutter/material.dart';
import '../components/reusable_card.dart';
import '../components/top_row_card_style.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';
import '../components/round_icon_button_design.dart';
import '../components/calculate_button.dart';

/*
* Since we only have two types of gender, we use an enum, this tells the computer
*  that we only have two options to choose from and nothing else. This makes our
*  code simple and runs smoothly.
*/
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
  int _weight = 74;
  int _age = 18;

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
                      /*
                      setState in this case rebuilds the widget with the relevant changes upton click.
                       */
                      selectedGender = Gender.male;
                    });
                  },
                  /*
                  After the widget has been rebuilt, the card color changes from inactive to active
                  depending on the clicked card. The ternary operator below facilitates the color change.
                   */
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
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: kSliderActiveColor,
                      inactiveTrackColor: kSliderInactiveColor,
                      thumbColor: kBottomContainerColor,
                      overlayColor: kThumbOverlayColor,
                      thumbShape: const RoundSliderThumbShape(
                        enabledThumbRadius: 15.0,
                      ),
                      overlayShape:
                          const RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                      value: _height.toDouble(),
                      min: kMinimum,
                      max: kMaximum,
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
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    cardColor: kTheCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'WEIGHT',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          _weight.toString(),
                          style: kLargeNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              childIcon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  _weight--;
                                });
                              },
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              childIcon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  _weight++;
                                });
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardColor: kTheCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'AGE',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          _age.toString(),
                          style: kLargeNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              childIcon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  _age--;
                                });
                              },
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              childIcon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  _age++;
                                });
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          CalculateButton(
            buttonText: 'CALCULATE',
            onTapped: () {
              Navigator.pushNamed(context, '/resultsPage');
            },
          ),
        ],
      ),
    );
  }
}
