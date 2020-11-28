import 'package:flutter/material.dart';
import 'package:flutter_liga_stavok/di/injections.dart';
import 'package:flutter_liga_stavok/logic/win_probability/win_probability_bloc.dart';
import 'package:flutter_liga_stavok/rest/models/match_probabilities.dart'
    as match_probabilities;
import 'package:flutter_liga_stavok/utils/exception.dart';
import 'package:flutter_liga_stavok/widgets/common/busy_widget.dart';
import 'package:flutter_liga_stavok/widgets/common/fail_widget.dart';
import 'package:flutter_liga_stavok/widgets/narrow/probability/probability_data.dart';
import 'package:logging/logging.dart';

final Logger _log = Logger('Probabilities');

class Probabilities extends StatelessWidget {
  const Probabilities({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<match_probabilities.Probabilities>(
      stream: getIt.get<WinProbabilityBloc>().stream,
      builder: (BuildContext context,
          AsyncSnapshot<match_probabilities.Probabilities> snapshot) {
        if (snapshot.hasError) {
          if (snapshot.error is AppBusy) {
            return const BusyWidget(child: _Probabilities());
          }

          return FailWidget(
            child: _Probabilities(),
            onTap: () {
              _log.info(() => 'build: onTap: error=${snapshot.error}');
              getIt.get<WinProbabilityBloc>().resubscribe();
            },
          );
        }

        if (snapshot.hasData) {
          return _Probabilities(probabilities: snapshot.data);
        }

        return _Probabilities();
      },
    );
  }
}

class _Probabilities extends StatelessWidget {
  const _Probabilities({
    Key key,
    this.probabilities,
  }) : super(key: key);

  final match_probabilities.Probabilities probabilities;

  @override
  Widget build(BuildContext context) {
    if ((probabilities?.markets?.isEmpty ?? true) ||
        (probabilities?.markets[0]?.outcomes?.length ?? 0) < 3) {
      return const ProbabilityData(
        name0: 'home_team_winner',
        value0: 0,
        name1: 'draw',
        value1: 0,
        name2: 'away_team_winner',
        value2: 0,
      );
    }

    return ProbabilityData(
      name0: probabilities?.markets[0]?.outcomes[0].name,
      value0: probabilities?.markets[0]?.outcomes[0].probability,
      name1: probabilities?.markets[0]?.outcomes[2].name,
      value1: probabilities?.markets[0]?.outcomes[2].probability,
      name2: probabilities?.markets[0]?.outcomes[1].name,
      value2: probabilities?.markets[0]?.outcomes[1].probability,
    );
  }
}
