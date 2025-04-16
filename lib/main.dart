// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:menu_item/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData (
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
        useMaterial3: true
      ),
      debugShowCheckedModeBanner: false,
      home: Menu(),
 
    );
  }
}