import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: EdgeInsets.all(32),
      child: Card(
        color: Colors.grey[900],
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/tanish.png'),
                radius: 60,
              ),
              SizedBox(height: 16),
              Text('Tanish',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 4),
              Text('Flutter Developer • UI/UX Enthusiast',
                  style: TextStyle(color: Colors.white70)),
              SizedBox(height: 12),
              Wrap(
                spacing: 10,
                children: [
                  Chip(label: Text('Flutter'), backgroundColor: Colors.white10),
                  Chip(label: Text('Firebase'), backgroundColor: Colors.white10),
                  Chip(label: Text('Clean UI'), backgroundColor: Colors.white10),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
