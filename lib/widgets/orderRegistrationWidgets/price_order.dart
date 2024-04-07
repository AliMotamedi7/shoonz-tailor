import 'package:flutter/material.dart';

class PriceOrder extends StatelessWidget {
  const PriceOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Row(
        textDirection: TextDirection.rtl,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.all(3),
            decoration:
                BoxDecoration(color: Colors.grey[400], shape: BoxShape.circle),
            child: const Icon(
              Icons.percent,
              color: Colors.black,
            ),
          ),
          Row(
            textDirection: TextDirection.rtl,
            children: [
              const Text(
                "قیمت کل:",
                textAlign: TextAlign.end,
                textDirection: TextDirection.rtl,
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: const Color(0xff005200),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Text(
                  "۲,۲۵۰,۰۰۰ تومان",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
