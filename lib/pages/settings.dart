// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:shoonz_tailor/widgets/settingsWidget/info_card.dart';
import 'package:shoonz_tailor/widgets/settingsWidget/setting_cards.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            children: [
              if (Platform.isAndroid)
                SizedBox(
                  height: 10,
                ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back),
                      ),
                      Text(
                        "تنظیمات",
                        textAlign: TextAlign.start,
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InfoCard(),
              SizedBox(
                height: 20,
              ),
              SettingsCard(icon: Icons.home, name: "اظلاعات شعب", onTap: () {}),
              SettingsCard(
                  icon: Icons.list_rounded, name: "مراحل سفارش", onTap: () {}),
              SettingsCard(
                  icon: Icons.supervised_user_circle,
                  name: "کارمندان",
                  onTap: () {}),
              SettingsCard(
                  icon: Icons.privacy_tip_rounded,
                  name: "قیمت دوخت",
                  onTap: () {}),
              SettingsCard(
                  icon: Icons.drive_file_rename_outline_sharp,
                  name: "اندازه ها",
                  onTap: () {}),
              SettingsCard(
                  icon: Icons.calendar_month,
                  name: "تنظیمات تاریخ تحویل",
                  onTap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
