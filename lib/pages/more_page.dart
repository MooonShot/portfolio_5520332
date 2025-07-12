import 'package:flutter/material.dart';
import 'profile_form_page.dart';
import 'settings_page.dart';
import 'slider_page.dart';
import 'summary_page.dart';

class MorePage extends StatelessWidget {
  const MorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("More Pages"),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.slideshow, color: Colors.white70),
            title: const Text("Slider Page", style: TextStyle(color: Colors.white)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => SliderPage()), // removed const
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings, color: Colors.white70),
            title: const Text("Settings", style: TextStyle(color: Colors.white)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => SettingsPage()), // removed const
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.input, color: Colors.white70),
            title: const Text("Profile Form", style: TextStyle(color: Colors.white)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => ProfileFormPage()), // removed const
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.account_box, color: Colors.white70),
            title: const Text("Summary Page", style: TextStyle(color: Colors.white)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const SummaryPage(name: 'Aayush')),
              );
            },
          ),
        ],
      ),
    );
  }
}
