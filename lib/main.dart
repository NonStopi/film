import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.orange[100],
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.orange,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.white,
          backgroundColor: Colors.orange,
        ),
      ),
      home: Home(),
    );
  }
}
