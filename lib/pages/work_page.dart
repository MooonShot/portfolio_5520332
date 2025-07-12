import 'package:flutter/material.dart';
import 'slider_page.dart';
import 'settings_page.dart';
import '../widgets/navigation_drawer.dart'; // ✅

class WorkPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Work')),
      drawer: AppDrawer(), // ✅ UPDATED HERE
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Text('Slider Demo', style: Theme.of(context).textTheme.titleLarge),
            SliderPage(),
            Divider(),
            Text('Settings', style: Theme.of(context).textTheme.titleLarge),
            SettingsPage(),
          ],
        ),
      ),
    );
  }
}
