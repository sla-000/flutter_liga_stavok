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
            children: const <Widget>[
              Text('LigaStavokNarrow'),
              SizedBox(height: 8),
              Card(
                elevation: kCardElevation,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Probabilities(),
                ),
              ),
              SizedBox(height: 8),
              Card(
                elevation: kCardElevation,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Head2Head(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
