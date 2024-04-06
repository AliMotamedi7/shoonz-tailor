import 'package:flutter/material.dart';
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
        ],
      )),
    );
  }
}
