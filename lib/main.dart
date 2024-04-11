import 'package:flutter/material.dart';
import 'package:shoonz_tailor/constants/appColors.dart';
import 'package:shoonz_tailor/pages/add_note.dart';
import 'package:shoonz_tailor/pages/customer.dart';
import 'package:shoonz_tailor/pages/delivery_date.dart';
import 'package:shoonz_tailor/pages/enter_size.dart';
import 'package:shoonz_tailor/pages/home.dart';
import 'package:shoonz_tailor/pages/login.dart';
import 'package:shoonz_tailor/pages/order.dart';
import 'package:shoonz_tailor/pages/order_registration.dart';
import 'package:shoonz_tailor/pages/otp.dart';
import 'package:shoonz_tailor/pages/settings.dart';
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
      theme: ThemeData(
          fontFamily: "IranSans", primaryColor: AppColors.greenShoonz),
      initialRoute: '/',
      routes: {
        '/': (context) => const Splash(),
        '/login': (context) => const Login(),
        '/otp': (context) => const Otp(),
        '/home': (context) => const Home(),
        '/customer': (context) => const CustomerPage(),
        '/order': (context) => const OrderPage(),
        '/orderRegistration': (context) => const OrderRegistration(),
        '/enterSize': (context) => EnterSize(),
        '/deliveryDate': (context) => const DeliveryDate(),
        '/addNote': (context) => const AddNote(),
        '/settings': (context) => const Settings(),
      },
    );
  }
}
