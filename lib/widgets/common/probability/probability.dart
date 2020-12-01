import 'package:flutter/material.dart';

class Probability extends StatelessWidget {
  const Probability({
    Key key,
    this.name,
    this.value,
  }) : super(key: key);

  final String name;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Text('${name ?? " "}: ${value ?? " "}');
  }
}
