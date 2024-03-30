import 'dart:io';

import 'package:flutter/material.dart';
import 'package:shoonz_tailor/widgets/homeWidgets/customerChart.dart';
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
            const TopProfile(
                phoneNumber: "09122758432", tailorName: "نام خیاط"),
            const SizedBox(
              height: 20,
            ),
            const CustomerChart(),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: Colors.grey[200],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      onPressed: () {},
                      child: const Text(
                        "مشاهده همه",
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          color: Color(0xff005200),
                        ),
                      )),
                  const Row(
                    children: [
                      Text(
                        "مشتریان",
                        textAlign: TextAlign.end,
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Icon(
                        Icons.supervisor_account_outlined,
                        size: 35,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
