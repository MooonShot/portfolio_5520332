import 'package:flutter/material.dart';
import '../widgets/navigation_drawer.dart';
import '../widgets/profile_card.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('About Me')),
      drawer: AppDrawer(),
      body: SingleChildScrollView(
        child: ProfileCard(),
      ),
    );
  }
}
