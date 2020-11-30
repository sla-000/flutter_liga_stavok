import 'package:flutter/material.dart';
import 'package:flutter_liga_stavok/di/injections.dart';
import 'package:flutter_liga_stavok/logic/selected_event/selected_event_bloc.dart';
import 'package:flutter_liga_stavok/rest/models/common.dart';
import 'package:flutter_liga_stavok/utils/exception.dart';
import 'package:flutter_liga_stavok/widgets/common/busy_widget.dart';
import 'package:flutter_liga_stavok/widgets/common/fail_widget.dart';

const double _kWidgetWidth = double.infinity;
const double _kWidgetHeight = 16;

class StartTime extends StatelessWidget {
  const StartTime({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _kWidgetWidth,
      height: _kWidgetHeight,
      child: Center(
        child: Center(
          child: StreamBuilder<SportEvent>(
            stream: getIt.get<SelectedEventBloc>().stream,
            builder:
                (BuildContext context, AsyncSnapshot<SportEvent> snapshot) {
              if (snapshot.hasError) {
                if (snapshot.error is AppBusy) {
                  return const BusyWidget(child: Center());
                }

                return FailWidget(
                  error: snapshot.error.toString(),
                  child: const Center(),
                );
              }

              if (snapshot.hasData) {
                return Text(
                  getLocalTime(snapshot.data.scheduled),
                  style: Theme.of(context).textTheme.headline4,
                  overflow: TextOverflow.ellipsis,
                );
              }

              return const Center();
            },
          ),
        ),
      ),
    );
  }

  String getLocalTime(String time) {
    final DateTime parsedTime = DateTime.parse(time);
    final DateTime localTime = parsedTime.toLocal();

    return '${localTime.day}.${localTime.month}.${localTime.year}, ${localTime.hour}:${localTime.minute}';
  }
}
