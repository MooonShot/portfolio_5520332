import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  void _launchEmail() async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'hi@iyushgg.xyz',
    );
    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri);
    }
  }

  void _launchGitHub() async {
    const url = 'https://github.com/MooonShot';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.black,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.grey[900],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/tanish.png'),
                    radius: 32,
                  ),
                  const SizedBox(height: 12),
                  const Text('Aayush',
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                  const Text('Vibe Coder',
                      style: TextStyle(color: Colors.white70, fontSize: 14)),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.email, color: Colors.white70),
              title: const Text('hi@iyushgg.xyz',
                  style: TextStyle(color: Colors.white70)),
              onTap: _launchEmail,
            ),
            ListTile(
              leading: const Icon(Icons.link, color: Colors.white70),
              title: const Text('GitHub',
                  style: TextStyle(color: Colors.white70)),
              onTap: _launchGitHub,
            ),
          ],
        ),
      ),
    );
  }
}
