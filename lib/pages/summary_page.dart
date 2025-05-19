import 'package:flutter/material.dart';

class SummaryPage extends StatelessWidget {
  final String name;
  final String email;
  final String about;
  final double sliderValue;
  final bool newsletter;
  final bool agb;
  final bool darkMode;
  final bool offlineMode;

  const SummaryPage({
    Key? key,
    required this.name,
    required this.email,
    required this.about,
    required this.sliderValue,
    required this.newsletter,
    required this.agb,
    required this.darkMode,
    required this.offlineMode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Zusammenfassung')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('👤 Profil', style: TextStyle(fontWeight: FontWeight.bold)),
            Text('Name: $name'),
            Text('E-Mail: $email'),
            Text('Über mich: $about'),
            SizedBox(height: 16),

            Text('🎚️ Slider-Wert', style: TextStyle(fontWeight: FontWeight.bold)),
            Text('Wert: ${sliderValue.round()}'),
            SizedBox(height: 16),

            Text('⚙️ Einstellungen', style: TextStyle(fontWeight: FontWeight.bold)),
            Text('Newsletter: ${newsletter ? "Ja" : "Nein"}'),
            Text('AGB: ${agb ? "Ja" : "Nein"}'),
            Text('Dunkler Modus: ${darkMode ? "Ein" : "Aus"}'),
            Text('Offline-Modus: ${offlineMode ? "Ein" : "Aus"}'),
          ],
        ),
      ),
    );
  }
}
