import 'package:flutter/material.dart';
import 'package:flutter_liga_stavok/rest/api/requests.dart';
import 'package:logging/logging.dart';

final Logger _log = Logger('ApiKeyEdit');

class ApiKeyEdit extends StatefulWidget {
  const ApiKeyEdit({
    Key key,
  }) : super(key: key);

  @override
  _ApiKeyEditState createState() => _ApiKeyEditState();
}

class _ApiKeyEditState extends State<ApiKeyEdit> {
  final TextEditingController textEditingController = TextEditingController()
    ..text = overrideForApiKey;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
        hintText: currentApiKey,
      ),
      onChanged: (String value) {
        overrideForApiKey = value;
      },
    );
  }
}
