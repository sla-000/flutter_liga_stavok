import 'package:flutter/material.dart';
import 'package:flutter_liga_stavok/theme/durations.dart';

const double _kWidgetHeight = 16;

class ChanceBar extends StatelessWidget {
  const ChanceBar({
    Key key,
    this.value,
  }) : super(key: key);

  final double value;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _kWidgetHeight,
      child: FittedBox(
        fit: BoxFit.fitWidth,
        child: Container(
          width: 100,
          height: _kWidgetHeight,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AnimatedContainer(
                duration: kHugeDuration,
                width: value ?? 0.0,
                height: _kWidgetHeight,
                color: Colors.lightGreen,
              ),
              const Expanded(
                child: Center(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
