import 'package:flutter/material.dart';
import 'package:flutter_liga_stavok/widgets/narrow/probability/probability.dart';
import 'package:logging/logging.dart';

final Logger _log = Logger('Probabilities');

class ProbabilityData extends StatelessWidget {
  const ProbabilityData({
    Key key,
    @required this.name0,
    @required this.value0,
    @required this.name1,
    @required this.value1,
    @required this.name2,
    @required this.value2,
  }) : super(key: key);

  final String name0;
  final double value0;

  final String name1;
  final double value1;

  final String name2;
  final double value2;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Probability(name: name0, value: value0),
        Probability(name: name1, value: value1),
        Probability(name: name2, value: value2),
      ],
    );
  }
}
