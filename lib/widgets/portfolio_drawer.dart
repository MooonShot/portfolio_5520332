import 'package:flutter/material.dart';

class PortfolioDrawer extends StatelessWidget {
  const PortfolioDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF1E1E1E),
      child: ListView(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        children: const [
          Text(
            'Tanish',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 30),
          DrawerItem(icon: Icons.home, label: 'Home'),
          DrawerItem(icon: Icons.work, label: 'Projects'),
          DrawerItem(icon: Icons.person, label: 'About'),
          DrawerItem(icon: Icons.mail, label: 'Contact'),
        ],
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const DrawerItem({required this.icon, required this.label, super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(label, style: const TextStyle(color: Colors.white)),
      onTap: () {
        // Handle navigation logic if needed
      },
    );
  }
}
