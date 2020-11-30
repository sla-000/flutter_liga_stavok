import 'package:flutter/material.dart';
import 'package:flutter_liga_stavok/widgets/narrow/match_score.dart';
import 'package:flutter_liga_stavok/widgets/narrow/match_time.dart';
import 'package:flutter_liga_stavok/widgets/narrow/start_time.dart';
import 'package:flutter_liga_stavok/widgets/narrow/team_chances.dart';
import 'package:flutter_liga_stavok/widgets/narrow/tournament_name.dart';

class LigaStavokNarrow extends StatelessWidget {
  const LigaStavokNarrow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        const TournamentName(),
        const StartTime(),
        const MatchScore(),
        Row(
          mainAxisSize: MainAxisSize.max,
          children: const <Widget>[
            Flexible(
              flex: 30,
              child: MatchTime(),
            ),
            Flexible(
              flex: 70,
              child: TeamsChances(),
            ),
          ],
        ),
      ],
    );
  }
}
