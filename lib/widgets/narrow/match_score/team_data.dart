import 'package:flutter/material.dart';

const double _kWidgetWidth = double.infinity;
const double _kWidgetHeight = 16;

class TeamData extends StatelessWidget {
  const TeamData({
    Key key,
    @required this.home,
  }) : super(key: key);

  final bool home;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Center(),
      ],
    );
  }
}
