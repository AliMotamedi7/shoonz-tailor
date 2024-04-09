import 'package:flutter/material.dart';
import 'package:shoonz_tailor/constants/appColors.dart';

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
        color: AppColors.greenLight,
      ),
      child: Text(
        type,
        style: const TextStyle(color: Colors.black),
      ),
    );
  }
}
