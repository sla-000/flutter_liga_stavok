import 'package:flutter/material.dart';
import 'package:flutter_liga_stavok/theme/elevations.dart';
import 'package:flutter_liga_stavok/theme/paddings.dart';
import 'package:flutter_liga_stavok/widgets/narrow/liga_stavok.dart';
import 'package:logging/logging.dart';

const double kWideScreenWidth = 800;

final Logger _log = Logger('LigaStavok')..level = Level.FINEST;

class LigaStavok extends StatelessWidget {
  const LigaStavok({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    _log.finest(() => 'builder: size=$size');

    if (size.width < kWideScreenWidth) {
      return ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: size.height * 0.3,
          maxHeight: size.height * 0.6,
        ),
        child: const Card(
          elevation: kCardElevation,
          child: Padding(
            padding: kCardPadding,
            child: LigaStavokNarrow(),
          ),
        ),
      );
    } else {
      return const Card(
        elevation: kCardElevation,
        child: Padding(
          padding: kCardPadding,
          child: LigaStavokNarrow(),
        ),
      );
      // todo add Wide
      // return const LigaStavokWide();
    }
  }
}
