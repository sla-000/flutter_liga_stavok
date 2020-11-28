import 'package:flutter/material.dart';

void showError(BuildContext context, Exception error) {
  Scaffold.of(context).showSnackBar(SnackBar(
    backgroundColor: Colors.red[200],
    content: Text('Error: error=$error'),
  ));
}
