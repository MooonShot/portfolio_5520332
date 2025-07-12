import 'package:flutter/material.dart';

class SummaryPage extends StatelessWidget {
  final String name;

  const SummaryPage({required this.name, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          elevation: 4,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Name: $name', style: Theme.of(context).textTheme.titleLarge),
                SizedBox(height: 10),
                Text('This is a summary of my profile.', style: TextStyle(fontSize: 16)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
