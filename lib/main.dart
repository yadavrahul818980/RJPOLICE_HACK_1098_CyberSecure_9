import 'package:cyber_secure/screens/trends.dart';
import 'package:flutter/material.dart';
// import 'dart:html';
import 'package:cyber_secure/screens/splash_screen.dart';
import 'package:cyber_secure/screens/loginscreen.dart';
import 'package:cyber_secure/screens/home.dart';
import 'package:cyber_secure/screens/otpVerification.dart';

void main() {
  runApp(const MyApp());
}

// asdfghjkl;
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 255, 255, 255)),
        useMaterial3: true,
      ),
      home: trendsPage(),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
