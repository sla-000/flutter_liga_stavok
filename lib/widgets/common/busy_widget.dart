import 'package:flutter/material.dart';

class BusyWidget extends StatelessWidget {
  const BusyWidget({
    Key key,
    this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Stack(
        children: <Widget>[
          child,
          const Center(
              child: SizedBox(
            width: 24,
            height: 24,
            child: CircularProgressIndicator(),
          )),
        ],
      ),
    );
  }
}
