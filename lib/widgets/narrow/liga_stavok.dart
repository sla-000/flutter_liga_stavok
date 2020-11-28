import 'package:flutter/material.dart';
import 'package:flutter_liga_stavok/theme/elevations.dart';
import 'package:flutter_liga_stavok/theme/paddings.dart';
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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const <Widget>[
            Text('LigaStavokNarrow'),
            SizedBox(height: 8),
            Probabilities(),
          ],
        ),
      ),
    );
  }
}
