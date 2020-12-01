import 'package:flutter/material.dart';
import 'package:flutter_liga_stavok/di/injections.dart';
import 'package:flutter_liga_stavok/logic/win_probability/win_probability_bloc.dart';
import 'package:flutter_liga_stavok/rest/models/match_probabilities.dart'
    as match_probabilities;
import 'package:flutter_liga_stavok/utils/exception.dart';
import 'package:flutter_liga_stavok/widgets/narrow/team_chances/team_chance.dart';

const String _kHomeFiledName = 'home_team_winner';
const String _kDrawFiledName = 'draw';
const String _kAwayFiledName = 'away_team_winner';

class TeamsChances extends StatefulWidget {
  const TeamsChances({
    Key key,
  }) : super(key: key);

  @override
  _TeamsChancesState createState() => _TeamsChancesState();
}

class _TeamsChancesState extends State<TeamsChances> {
  List<match_probabilities.Outcome> outcomes;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<match_probabilities.Probabilities>(
      stream: getIt.get<WinProbabilityBloc>().stream,
      builder: (BuildContext context,
          AsyncSnapshot<match_probabilities.Probabilities> snapshot) {
        if (snapshot.hasError) {
          if (snapshot.error is AppBusy) {
            return _Probabilities(
              home: _getProbability(outcomes, _kHomeFiledName),
              draw: _getProbability(outcomes, _kDrawFiledName),
              away: _getProbability(outcomes, _kAwayFiledName),
            );
          }

          return const _Probabilities();
        }

        if (snapshot.hasData) {
          if ((snapshot.data.markets?.length ?? 0) < 1) {
            return const _Probabilities();
          }

          outcomes = snapshot.data.markets[0]?.outcomes;

          return _Probabilities(
            home: _getProbability(outcomes, _kHomeFiledName),
            draw: _getProbability(outcomes, _kDrawFiledName),
            away: _getProbability(outcomes, _kAwayFiledName),
          );
        }

        outcomes = null;

        return const _Probabilities();
      },
    );
  }

  double _getProbability(
      List<match_probabilities.Outcome> outcomes, String name) {
    return outcomes
        ?.firstWhere(
            (match_probabilities.Outcome outcome) => outcome.name == name,
            orElse: () => null)
        ?.probability;
  }
}

class _Probabilities extends StatelessWidget {
  const _Probabilities({
    Key key,
    this.home,
    this.draw,
    this.away,
  }) : super(key: key);

  final double home;
  final double draw;
  final double away;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        TeamChance(
          label: 'home',
          value: home,
        ),
        const SizedBox(height: 4),
        TeamChance(
          label: 'draw',
          value: draw,
        ),
        const SizedBox(height: 4),
        TeamChance(
          label: 'away',
          value: away,
        ),
      ],
    );
  }
}
