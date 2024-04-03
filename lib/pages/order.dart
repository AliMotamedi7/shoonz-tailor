import 'package:flutter/material.dart';
import 'package:shoonz_tailor/widgets/orderWidgets/order_text_field.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back)),
                  const Text(
                    "لیست سفارشات",
                    textAlign: TextAlign.start,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ],
              ),
              const OrderTextField(),
            ],
          ),
        ),
      )),
    );
  }
}
