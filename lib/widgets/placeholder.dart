import 'package:flutter/material.dart';
import 'package:flutter_liga_stavok/theme/elevations.dart';
import 'package:flutter_liga_stavok/theme/paddings.dart';

class PlaceHolder extends StatelessWidget {
  const PlaceHolder({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.green[50],
      elevation: kCardElevation,
      child: Padding(
        padding: kCardPadding,
        child: Container(
          height: 1500,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const <Widget>[
              Text('PlaceHolder'),
              Text('PlaceHolder'),
              Text('PlaceHolder'),
              Text('PlaceHolder'),
              Text('PlaceHolder'),
              Text('PlaceHolder'),
              Text('PlaceHolder'),
              Text('PlaceHolder'),
              Text('PlaceHolder'),
              Text('PlaceHolder'),
              Text('PlaceHolder'),
              Text('PlaceHolder'),
              Text('PlaceHolder'),
              Text('PlaceHolder'),
              Text('PlaceHolder'),
              Text('PlaceHolder'),
              Text('PlaceHolder'),
              Text('PlaceHolder'),
            ],
          ),
        ),
      ),
    );
  }
}
