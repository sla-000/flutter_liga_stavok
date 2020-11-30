import 'package:flutter/material.dart';
import 'package:flutter_liga_stavok/theme/elevations.dart';
import 'package:flutter_liga_stavok/theme/paddings.dart';
import 'package:flutter_liga_stavok/theme/physics.dart';
import 'package:flutter_liga_stavok/widgets/card_wrapper.dart';
import 'package:flutter_liga_stavok/widgets/common/fun_facts/fun_facts.dart';
import 'package:flutter_liga_stavok/widgets/common/head2head/head2head.dart';
import 'package:flutter_liga_stavok/widgets/common/live_results/live_results.dart';
import 'package:flutter_liga_stavok/widgets/common/probability/probabilities.dart';
import 'package:flutter_liga_stavok/widgets/common/team_profile/team_profile.dart';

class Overview extends StatelessWidget {
  const Overview({
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
            children: const <Widget>[
              CardWrapper(
                label: 'LiveResults',
                child: LiveResults(),
              ),
              SizedBox(height: 8),
              CardWrapper(
                label: 'MatchProbabilities',
                child: Probabilities(),
              ),
              SizedBox(height: 8),
              CardWrapper(
                label: 'Head2Head',
                child: Head2Head(),
              ),
              SizedBox(height: 8),
              CardWrapper(
                label: 'FunFacts',
                child: FunFacts(),
              ),
              SizedBox(height: 8),
              CardWrapper(
                label: 'TeamProfileHome',
                child: TeamProfileHome(),
              ),
              SizedBox(height: 8),
              CardWrapper(
                label: 'TeamProfileAway',
                child: TeamProfileAway(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
