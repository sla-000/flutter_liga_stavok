import 'package:flutter/material.dart';
import 'package:flutter_liga_stavok/di/injections.dart';
import 'package:flutter_liga_stavok/logic/head_3_head/head_2_head_bloc.dart';
import 'package:flutter_liga_stavok/rest/models/head_2_head.dart'
    as head_2_head;
import 'package:flutter_liga_stavok/utils/exception.dart';
import 'package:flutter_liga_stavok/widgets/common/busy_widget.dart';
import 'package:flutter_liga_stavok/widgets/common/fail_widget.dart';
import 'package:logging/logging.dart';

final Logger _log = Logger('Head2Head');

class Head2Head extends StatelessWidget {
  const Head2Head({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<head_2_head.Data>(
      stream: getIt.get<Head2HeadBloc>().stream,
      builder:
          (BuildContext context, AsyncSnapshot<head_2_head.Data> snapshot) {
        if (snapshot.hasError) {
          if (snapshot.error is AppBusy) {
            return const BusyWidget(child: const _Head2Head());
          }

          return FailWidget(
            child: const _Head2Head(),
            onTap: () {
              _log.info(() => 'build: onTap: error=${snapshot.error}');
              getIt.get<Head2HeadBloc>().resubscribe();
            },
          );
        }

        if (snapshot.hasData) {
          _log.finest(() => 'build: data=${snapshot.data}');
          return _Head2Head(data: snapshot.data);
        }

        return const _Head2Head();
      },
    );
  }
}

class _Head2Head extends StatelessWidget {
  const _Head2Head({
    Key key,
    this.data,
  }) : super(key: key);

  final head_2_head.Data data;

  @override
  Widget build(BuildContext context) {
    if ((data?.teams?.length ?? 0) != 2) {
      return const Center();
    }

    return const Center();
  }
}
