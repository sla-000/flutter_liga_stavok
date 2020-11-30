import 'package:flutter/material.dart';
import 'package:flutter_liga_stavok/di/injections.dart';
import 'package:flutter_liga_stavok/logic/win_probability/win_probability_bloc.dart';
import 'package:flutter_liga_stavok/rest/models/match_probabilities.dart'
    as match_probabilities;
import 'package:flutter_liga_stavok/widgets/common/probability/probability_data.dart';
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
          return const _Probabilities();
        }

        if (snapshot.hasData) {
          return _Probabilities(
            key: ValueKey<int>(snapshot.data.hashCode),
            probabilities: snapshot.data,
          );
        }

        return const _Probabilities();
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
      return const Center();
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
