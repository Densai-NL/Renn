import 'package:flutter/material.dart';
import 'package:renn_mobile/main_nav.dart';

void main() {
  runApp(const MyApp());
}

const Color backgroundColor = Color.fromRGBO(19, 37, 23, 1);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Renn',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: backgroundColor,
          foregroundColor: Colors.white,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(
              Color.fromRGBO(63, 236, 141, 1),
            ),
            foregroundColor: WidgetStateProperty.all(Colors.black),
            textStyle: WidgetStateProperty.all(
              const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            ),
          ),
        ),
        colorScheme: .fromSeed(seedColor: Colors.green),
        textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.white)),
        scaffoldBackgroundColor: backgroundColor,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Color.fromRGBO(63, 236, 141, 1),
          unselectedItemColor: Colors.grey,
          backgroundColor: backgroundColor,
          unselectedLabelStyle: TextStyle(color: Colors.grey),
        ),
      ),
      home: MainNav(),
    );
  }
}
