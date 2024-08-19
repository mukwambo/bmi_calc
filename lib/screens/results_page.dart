import 'package:bmi_calc/components/calculate_button.dart';
import 'package:bmi_calc/components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class ResultsPage extends StatefulWidget {
  final String theBMIValue;
  final String theBMIResult;
  final String theBMIComment;
  const ResultsPage({
    super.key,
    required this.theBMIValue,
    required this.theBMIResult,
    required this.theBMIComment,
  });

  @override
  State<ResultsPage> createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Your Result',
                style: kResultTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              cardColor: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    // To access the attributes of _ResultPageState we have to use the 'widget' otherwise it won't work
                    widget.theBMIResult.toUpperCase(),
                    style: kResultLabelTextStyle,
                  ),
                  Text(
                    widget.theBMIValue,
                    style: kBMITextStyle,
                  ),
                  Text(
                    widget.theBMIComment,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          CalculateButton(
            buttonText: 'RE-CALCULATE',
            onTapped: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
