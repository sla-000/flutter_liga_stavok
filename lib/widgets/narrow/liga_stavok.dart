import 'package:flutter/material.dart';
import 'package:flutter_liga_stavok/theme/elevations.dart';
import 'package:flutter_liga_stavok/theme/paddings.dart';

class LigaStavokNarrow extends StatelessWidget {
  const LigaStavokNarrow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Card(
      elevation: kCardElevation,
      child: Padding(
        padding: kCardPadding,
        child: Text('LigaStavokNarrow'),
      ),
    );
  }
}
