import 'dart:io';

import 'package:flutter/material.dart';
import 'package:shoonz_tailor/widgets/homeWidgets/topProfile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: Platform.isAndroid ? false : true,
        child: Column(
          children: [
            TopProfile(phoneNumber: "09122758432", tailorName: "نام خیاط")
          ],
        ),
      ),
    );
  }
}
