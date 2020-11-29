import 'package:flutter/material.dart';
import 'package:flutter_liga_stavok/di/injections.dart';
import 'package:flutter_liga_stavok/logic/fun_facts/fun_facts_bloc.dart';
import 'package:flutter_liga_stavok/utils/exception.dart';
import 'package:flutter_liga_stavok/widgets/common/busy_widget.dart';
import 'package:flutter_liga_stavok/widgets/common/fail_widget.dart';
import 'package:logging/logging.dart';

final Logger _log = Logger('FunFacts');

class FunFacts extends StatelessWidget {
  const FunFacts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<String>>(
      stream: getIt.get<FunFactsBloc>().stream,
      builder: (BuildContext context, AsyncSnapshot<List<String>> snapshot) {
        if (snapshot.hasError) {
          if (snapshot.error is AppBusy) {
            return const BusyWidget(child: const _FunFacts());
          }

          return FailWidget(
            error: snapshot.error.toString(),
            child: const _FunFacts(),
            onTap: () {
              _log.info(() => 'build: onTap: error=${snapshot.error}');
              getIt.get<FunFactsBloc>().resubscribe();
            },
          );
        }

        if (snapshot.hasData) {
          _log.finest(() => 'build: data=${snapshot.data}');
          return _FunFacts(
            key: ValueKey<int>(snapshot.data.hashCode),
            strings: snapshot.data,
          );
        }

        return const _FunFacts();
      },
    );
  }
}

class _FunFacts extends StatelessWidget {
  const _FunFacts({
    Key key,
    this.strings,
  }) : super(key: key);

  final List<String> strings;

  @override
  Widget build(BuildContext context) {
    if (strings?.isEmpty ?? true) {
      return const Center();
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: _getChildren(),
    );
  }

  List<Widget> _getChildren() {
    return strings.map((String str) => _getChild(str)).toList(growable: false);
  }

  TextWidget _getChild(String text) => TextWidget(
        text: text,
      );
}

class TextWidget extends StatelessWidget {
  const TextWidget({
    Key key,
    this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
