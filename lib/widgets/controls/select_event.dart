import 'package:flutter/material.dart';
import 'package:flutter_liga_stavok/rest/models/common.dart';
import 'package:logging/logging.dart';

final Logger _log = Logger('SelectEventDialog');

class SelectEventDialog extends StatelessWidget {
  const SelectEventDialog({
    Key key,
    this.sportEvents,
  }) : super(key: key);

  final List<SportEvent> sportEvents;

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: const Text('Select event'),
      children: _getChildren(context),
    );
  }

  List<Widget> _getChildren(BuildContext context) {
    return sportEvents
        .map((SportEvent sportEvent) => _getChild(context, sportEvent))
        .toList(growable: false);
  }

  Widget _getChild(BuildContext context, SportEvent sportEvent) {
    return InkWell(
      onTap: () {
        _log.info(() => '_getChild: onTap: sportEvent=$sportEvent');
        Navigator.of(context).pop<SportEvent>(sportEvent);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          title: Text(sportEvent.season.name),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(sportEvent.scheduled),
                const SizedBox(height: 4),
                Competitors(
                  competitors: sportEvent.competitors,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Competitors extends StatelessWidget {
  const Competitors({
    Key key,
    this.competitors,
  }) : super(key: key);

  final List<Competitor> competitors;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('${competitors[0].abbreviation}'
            ' :'
            ' ${competitors[1].abbreviation}'),
        Text(
          '${competitors[0].name}'
          ' :'
          ' ${competitors[1].name}',
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
