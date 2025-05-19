import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  final bool newsletter;
  final bool agb;
  final bool darkMode;
  final bool offlineMode;

  SettingsPage({
    this.newsletter = false,
    this.agb = false,
    this.darkMode = false,
    this.offlineMode = false,
  });

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  late bool _newsletter;
  late bool _agb;
  late bool _darkMode;
  late bool _offlineMode;

  @override
  void initState() {
    super.initState();
    _newsletter = widget.newsletter;
    _agb = widget.agb;
    _darkMode = widget.darkMode;
    _offlineMode = widget.offlineMode;
  }

  void _saveSettings() {
    Navigator.pop(context, {
      'newsletter': _newsletter,
      'agb': _agb,
      'darkMode': _darkMode,
      'offlineMode': _offlineMode,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Einstellungen')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CheckboxListTile(
              title: Text('Newsletter abonnieren'),
              value: _newsletter,
              onChanged: (value) {
                setState(() {
                  _newsletter = value ?? false;
                });
              },
            ),
            CheckboxListTile(
              title: Text('AGB akzeptieren'),
              value: _agb,
              onChanged: (value) {
                setState(() {
                  _agb = value ?? false;
                });
              },
            ),
            SwitchListTile(
              title: Text('Dunkler Modus'),
              value: _darkMode,
              onChanged: (value) {
                setState(() {
                  _darkMode = value;
                });
              },
            ),
            SwitchListTile(
              title: Text('Offline-Modus'),
              value: _offlineMode,
              onChanged: (value) {
                setState(() {
                  _offlineMode = value;
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Speichern und zurück'),
              onPressed: _saveSettings,
            ),
          ],
        ),
      ),
    );
  }
}
