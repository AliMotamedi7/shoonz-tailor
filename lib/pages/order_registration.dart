import 'dart:io';

import 'package:flutter/material.dart';
import 'package:shoonz_tailor/widgets/orderRegistrationWidgets/orde_registration_table.dart';
import 'package:shoonz_tailor/widgets/orderRegistrationWidgets/order_registration_buttons.dart';
import 'package:shoonz_tailor/widgets/orderRegistrationWidgets/price_order.dart';
import 'package:shoonz_tailor/widgets/orderRegistrationWidgets/tailorSizebutton.dart';
import 'package:shoonz_tailor/widgets/orderRegistrationWidgets/topOrderProfile.dart';

class OrderRegistration extends StatefulWidget {
  const OrderRegistration({super.key});

  @override
  State<OrderRegistration> createState() => _OrderRegistrationState();
}

class _OrderRegistrationState extends State<OrderRegistration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          if (Platform.isAndroid)
            const SizedBox(
              height: 10,
            ),
          TopOrderProfile(phoneNumber: "09022259493", name: "امیررضامجد"),
          const SizeTailorButton(),
          Directionality(
            textDirection: TextDirection.rtl,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color(0xffd9e5da)),
                    child: const Icon(
                      Icons.view_list_outlined,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "فاکتور سفارشات",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const OrderRegistrationTable(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: const Color(0xffd9e5da),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {},
                icon: const Icon(
                  Icons.date_range,
                  color: Colors.black,
                ),
                label: const Text(
                  "تاریخ تحویل",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: const Color(0xffd9e5da),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {},
                icon: const Icon(
                  Icons.list_alt_sharp,
                  color: Colors.black,
                ),
                label: const Text(
                  "یادداشت ها",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const PriceOrder(),
          const SizedBox(
            height: 10,
          ),
          const OrderRestrationButtons(),
        ],
      )),
    );
  }
}
