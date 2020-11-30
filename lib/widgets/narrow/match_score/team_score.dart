import 'package:flutter/material.dart';

const double _kWidgetWidth = 60;

class TeamScore extends StatelessWidget {
  const TeamScore({
    Key key,
    @required this.home,
  }) : super(key: key);

  final bool home;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _kWidgetWidth,
      child: Center(),
    );
  }
}
