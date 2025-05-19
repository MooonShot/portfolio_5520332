import 'package:flutter/material.dart';
import 'profile_form_page.dart';
import 'slider_page.dart';
import 'settings_page.dart';
import 'summary_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _name = '';
  String _email = '';
  String _about = '';
  double _sliderValue = 50;
  bool _newsletter = false;
  bool _agb = false;
  bool _darkMode = false;
  bool _offlineMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Portfolio App')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ProfileFormPage(
                      initialName: _name,
                      initialEmail: _email,
                      initialAbout: _about,
                    ),
                  ),
                );
                if (result != null) {
                  setState(() {
                    _name = result['name'];
                    _email = result['email'];
                    _about = result['about'];
                  });
                }
              },
              child: Text('👤 Profil bearbeiten'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple[100],
                foregroundColor: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => SliderPage(initialValue: _sliderValue),
                  ),
                );
                if (result != null) {
                  setState(() {
                    _sliderValue = result;
                  });
                }
              },
              child: Text('🎚️ Slider-Seite'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple[100],
                foregroundColor: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => SettingsPage(
                      newsletter: _newsletter,
                      agb: _agb,
                      darkMode: _darkMode,
                      offlineMode: _offlineMode,
                    ),
                  ),
                );
                if (result != null) {
                  setState(() {
                    _newsletter = result['newsletter'];
                    _agb = result['agb'];
                    _darkMode = result['darkMode'];
                    _offlineMode = result['offlineMode'];
                  });
                }
              },
              child: Text('⚙️ Einstellungen'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple[100],
                foregroundColor: Colors.black,
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => SummaryPage(
                      name: _name,
                      email: _email,
                      about: _about,
                      sliderValue: _sliderValue,
                      newsletter: _newsletter,
                      agb: _agb,
                      darkMode: _darkMode,
                      offlineMode: _offlineMode,
                    ),
                  ),
                );
              },
              child: Text('🧾 Zur Zusammenfassung'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
            ),
            SizedBox(height: 40),
Text(
  'Made with ❤️ + ☕ by Aayush Babbar',
  style: TextStyle(fontStyle: FontStyle.italic),
),

          ],
        ),
      ),
    );
  }
}
