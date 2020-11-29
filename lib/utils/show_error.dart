import 'package:flutter/material.dart';
import 'package:flutter_liga_stavok/utils/exception.dart';

void showError(BuildContext context, Exception error) {
  Scaffold.of(context).showSnackBar(SnackBar(
    backgroundColor: Colors.red[200],
    content: Text('Error: ${AppException.getMessage(context, error)}'),
  ));
}
