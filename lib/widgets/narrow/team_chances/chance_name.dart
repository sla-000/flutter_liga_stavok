import 'package:flutter/material.dart';

class ChanceName extends StatelessWidget {
  const ChanceName({
    Key key,
    @required this.label,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      child: Text(
        label,
        style: Theme.of(context).textTheme.headline4,
      ),
    );
  }
}
