import 'package:flutter/material.dart';
import 'package:shoonz_tailor/constants/appColors.dart';

class CustomerNameListItem extends StatelessWidget {
  const CustomerNameListItem({super.key, required this.customerName});

  final String customerName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: AppColors.greenLight,
          borderRadius: BorderRadius.circular(10)),
      child: Text(
        customerName,
        textAlign: TextAlign.end,
        textDirection: TextDirection.rtl,
        style: const TextStyle(
          color: AppColors.greenShoonz,
          fontSize: 14.0,
        ),
      ),
    );
  }
}
