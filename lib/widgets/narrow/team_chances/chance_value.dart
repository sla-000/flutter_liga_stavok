import 'package:flutter/material.dart';

const double _kWidgetHeight = 20;

class ChanceValue extends StatelessWidget {
  const ChanceValue({
    Key key,
    this.value,
  }) : super(key: key);

  final double value;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      child: Text(
        '${value?.toStringAsFixed(1) ?? " "}',
        textAlign: TextAlign.right,
      ),
    );
  }
}
