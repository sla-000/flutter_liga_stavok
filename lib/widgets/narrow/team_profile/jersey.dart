import 'package:flutter/material.dart';
import 'package:flutter_liga_stavok/rest/models/team_profile.dart'
    as team_profile;
import 'package:logging/logging.dart';

final Logger _log = Logger('Jersey');

class Jersey extends StatelessWidget {
  const Jersey({
    Key key,
    this.jersey,
  }) : super(key: key);

  final team_profile.Jersey jersey;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('type: ${jersey?.type}'),
        Text('base: ${jersey?.base}'),
        Text('horizontalStripes: ${jersey?.horizontalStripes}'),
        Text('number: ${jersey?.number}'),
        Text('shirtType: ${jersey?.shirtType}'),
        Text('sleeve: ${jersey?.sleeve}'),
        Text('split: ${jersey?.split}'),
        Text('squares: ${jersey?.squares}'),
        Text('stripes: ${jersey?.stripes}'),
      ],
    );
  }
}
