import 'package:flutter/material.dart';
import 'package:flutter_liga_stavok/rest/api/requests.dart';
import 'package:logging/logging.dart';

final Logger _log = Logger('SettingsDialog');

class SettingsDialog extends StatefulWidget {
  const SettingsDialog({
    Key key,
  }) : super(key: key);

  @override
  _SettingsDialogState createState() => _SettingsDialogState();
}

class _SettingsDialogState extends State<SettingsDialog> {
  String selectedApi = requestLeagueName;

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: const Text('Settings'),
      children: <Widget>[
        _buildLeagueName('International', kLeagueIntl),
        _buildLeagueName('Europe', kLeagueEu),
        _buildLeagueName('America', kLeagueAm),
        _buildLeagueName('Asia', kLeagueAs),
        _buildLeagueName('Other', kLeagueOther),
      ],
    );
  }

  ListTile _buildLeagueName(String text, String value) {
    return ListTile(
      title: Text(text),
      leading: Radio<String>(
        value: value,
        groupValue: selectedApi,
        onChanged: (String value) {
          requestLeagueName = value;
          setState(() {
            selectedApi = value;
          });
        },
      ),
    );
  }
}
