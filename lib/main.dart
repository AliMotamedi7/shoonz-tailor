import 'package:flutter/material.dart';
import 'package:shoonz_tailor/pages/home.dart';
import 'package:shoonz_tailor/pages/login.dart';
import 'package:shoonz_tailor/pages/otp.dart';
import 'package:shoonz_tailor/pages/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "IranSans"),
      initialRoute: '/',
      routes: {
        '/': (context) => const Splash(),
        '/login': (context) => const Login(),
        '/otp': (context) => const Otp(),
        '/home': (context) => const Home(),
      },
    );
  }
}
