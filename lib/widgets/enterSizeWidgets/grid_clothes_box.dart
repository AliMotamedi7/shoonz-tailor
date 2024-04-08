import 'package:flutter/material.dart';

class GridCothesBox extends StatelessWidget {
  const GridCothesBox({super.key, required this.type});

  final String type;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      alignment: Alignment.center,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xfff2f6f2),
      ),
      child: Text(
        type,
        style: const TextStyle(color: Colors.black),
      ),
    );
  }
}
