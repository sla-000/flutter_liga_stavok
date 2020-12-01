import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_liga_stavok/rest/api/requests.dart';
import 'package:flutter_liga_stavok/widgets/controls/api_key_edit.dart';
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
  String selectedApi = currentLeagueName;

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: Text('Settings', style: Theme.of(context).textTheme.headline2),
      children: <Widget>[
        Container(
          decoration:
              BoxDecoration(border: Border.all(color: Colors.grey[100])),
          child: ListTile(
            title: const Text('Override API key'),
            subtitle: ApiKeyEdit(key: ValueKey<String>(selectedApi)),
          ),
        ),
        _buildLeagueName('International', kLeagueIntl),
        _buildLeagueName('Europe', kLeagueEu),
        _buildLeagueName('America', kLeagueAm),
        _buildLeagueName('Asia', kLeagueAs),
        _buildLeagueName('Other', kLeagueOther),
      ],
    );
  }

  Widget _buildLeagueName(String text, String value) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.grey[100])),
      child: ListTile(
        title: Text(text),
        leading: Radio<String>(
          value: value,
          groupValue: selectedApi,
          onChanged: (String value) {
            currentLeagueName = value;
            setState(() {
              selectedApi = value;
            });
          },
        ),
      ),
    );
  }
}
