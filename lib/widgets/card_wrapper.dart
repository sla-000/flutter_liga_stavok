import 'package:flutter/material.dart';
import 'package:flutter_liga_stavok/theme/elevations.dart';
import 'package:flutter_liga_stavok/theme/paddings.dart';

class CardWrapper extends StatelessWidget {
  const CardWrapper({
    Key key,
    @required this.label,
    @required this.child,
  }) : super(key: key);

  final String label;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: kCardElevation,
      child: Padding(
        padding: kCardPadding,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(label),
            const SizedBox(height: 8),
            child,
          ],
        ),
      ),
    );
  }
}
