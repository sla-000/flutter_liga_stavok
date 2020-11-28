import 'package:flutter/material.dart';
import 'package:flutter_liga_stavok/theme/elevations.dart';
import 'package:flutter_liga_stavok/theme/paddings.dart';
import 'package:flutter_liga_stavok/theme/physics.dart';
import 'package:flutter_liga_stavok/widgets/narrow/head2head/head2head.dart';
import 'package:flutter_liga_stavok/widgets/narrow/probability/probabilities.dart';

class LigaStavokNarrow extends StatelessWidget {
  const LigaStavokNarrow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: kCardElevation,
      child: Padding(
        padding: kCardPadding,
        child: SingleChildScrollView(
          physics: scrollPhysics,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Card(
                elevation: kCardElevation,
                child: Padding(
                  padding: kCardPadding,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text('MatchProbabilities'),
                      SizedBox(height: 8),
                      Probabilities(),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Card(
                elevation: kCardElevation,
                child: Padding(
                  padding: kCardPadding,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text('Head2Head'),
                      SizedBox(height: 8),
                      Head2Head(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
