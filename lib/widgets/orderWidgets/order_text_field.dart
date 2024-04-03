import 'package:flutter/material.dart';

class OrderTextField extends StatefulWidget {
  const OrderTextField({super.key});

  @override
  State<OrderTextField> createState() => _OrderTextFieldState();
}

class _OrderTextFieldState extends State<OrderTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 55,
      child: TextField(
        cursorColor: Colors.black45,
        textAlign: TextAlign.start,
        textDirection: TextDirection.rtl,
        decoration: InputDecoration(
          hintStyle: const TextStyle(fontSize: 12),
          hintText: "جستوجو بر اساس نام ،موبایل ،شماره فاکتور...",
          prefixIcon: const Icon(
            Icons.search,
            size: 30,
            color: Colors.grey,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Colors.black,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
