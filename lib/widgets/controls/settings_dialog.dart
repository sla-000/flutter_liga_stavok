import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_liga_stavok/rest/api/requests.dart';
import 'package:flutter_liga_stavok/widgets/controls/api_key_edit.dart';
import 'package:flutter_liga_stavok/widgets/controls/network_rate.dart';
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
        _buildBordered(const ListTile(
          title: Text('Live update period'),
          subtitle: LiveUpdatePeriod(),
        )),
        _buildBordered(ListTile(
          title: const Text('Override API key'),
          subtitle: ApiKeyEdit(key: ValueKey<String>(selectedApi)),
        )),
        _buildBordered(_buildTile('International', kLeagueIntl)),
        _buildBordered(_buildTile('Europe', kLeagueEu)),
        _buildBordered(_buildTile('America', kLeagueAm)),
        _buildBordered(_buildTile('Asia', kLeagueAs)),
        _buildBordered(_buildTile('Other', kLeagueOther)),
      ],
    );
  }

  Widget _buildBordered(Widget child) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.grey[100])),
      child: child,
    );
  }

  ListTile _buildTile(String text, String value) {
    return ListTile(
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
    );
  }
}
