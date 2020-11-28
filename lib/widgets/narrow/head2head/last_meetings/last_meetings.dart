import 'package:flutter/material.dart';
import 'package:flutter_liga_stavok/rest/models/head_2_head.dart'
    as head_2_head;
import 'package:flutter_liga_stavok/widgets/narrow/head2head/last_meetings/one_last_result.dart';
import 'package:logging/logging.dart';

final Logger _log = Logger('LastMeetings');

class LastMeetings extends StatelessWidget {
  const LastMeetings({
    Key key,
    this.results,
  }) : super(key: key);

  final List<head_2_head.Result> results;

  @override
  Widget build(BuildContext context) {
    if (results?.isEmpty ?? true) {
      const Center();
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: _getChildren(),
    );
  }

  List<Widget> _getChildren() {
    return results
        .map((head_2_head.Result result) => _getChild(result))
        .toList(growable: false);
  }

  Widget _getChild(head_2_head.Result result) => Padding(
        padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
        child: OneLastResult(
          result: result,
        ),
      );
}
