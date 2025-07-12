import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(MyApp()); // No const here — HomePage is not const
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // This is fine to keep const

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Aayush's Portfolio",
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
        ),
      ),
      home: HomePage(), // ✅ NOT const
      debugShowCheckedModeBanner: false,
    );
  }
}
