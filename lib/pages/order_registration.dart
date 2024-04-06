import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shoonz_tailor/widgets/orderRegistrationWidgets/orde_registration_table.dart';
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
          SizedBox(
            height: 15,
          ),
          const OrderRegistrationTable(),
        ],
      )),
    );
  }
}