import 'package:flutter/material.dart';
import 'package:telegram/screens/home_screen.dart';

void main() {
  runApp(const Telegram());
}

class Telegram extends StatelessWidget {
  const Telegram({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
