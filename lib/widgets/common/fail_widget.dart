import 'package:flutter/material.dart';

class FailWidget extends StatelessWidget {
  const FailWidget({
    Key key,
    this.child,
    @required this.error,
    this.onTap,
  }) : super(key: key);

  final Widget child;
  final String error;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Stack(
        children: <Widget>[
          child,
          Center(
            child: InkWell(
              onTap: onTap,
              child: Tooltip(
                message: error,
                child: Icon(
                  onTap == null ? Icons.warning : Icons.refresh,
                  size: 24,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
