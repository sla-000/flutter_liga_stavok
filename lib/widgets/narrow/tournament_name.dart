import 'package:flutter/material.dart';

class TournamentName extends StatelessWidget {
  const TournamentName({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 30,
      child: Center(
          child: Text(
        'Tournament name',
        style: Theme.of(context).textTheme.headline2,
        overflow: TextOverflow.ellipsis,
      )),
    );
  }
}
