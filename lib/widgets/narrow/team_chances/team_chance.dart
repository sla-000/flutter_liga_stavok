import 'package:flutter/material.dart';
import 'package:flutter_liga_stavok/widgets/narrow/team_chances/chance_bar.dart';
import 'package:flutter_liga_stavok/widgets/narrow/team_chances/chance_name.dart';
import 'package:flutter_liga_stavok/widgets/narrow/team_chances/chance_value.dart';

class TeamChance extends StatelessWidget {
  const TeamChance({
    Key key,
    @required this.label,
    this.value,
  }) : super(key: key);

  final String label;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        ChanceName(label: value == null ? ' ' : label),
        Expanded(
          child: ChanceBar(value: value),
        ),
        ChanceValue(value: value),
      ],
    );
  }
}
