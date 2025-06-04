import 'package:flutter/material.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({super.key});

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text("data", style: TextStyle(fontFamily: 'Poppins')),
          Text("data"),
        ],
      ),
    );
  }
}
