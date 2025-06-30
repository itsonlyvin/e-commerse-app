import 'package:flutter/material.dart';
import 'package:t_store/home.dart';
import 'package:t_store/utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // This is the main entry point of the application.
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      title: 'E-Shop',
      // The home widget is the main screen of the application.
      home: HomeApp(),
    );
  }
}
