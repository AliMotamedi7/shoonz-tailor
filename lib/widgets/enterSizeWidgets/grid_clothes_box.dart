import 'package:flutter/material.dart';
import 'package:shoonz_tailor/constants/appColors.dart';
import 'package:shoonz_tailor/widgets/enterSizeWidgets/type_dialog.dart';

class GridCothesBox extends StatelessWidget {
  const GridCothesBox({super.key, required this.type});

  final String type;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(context: context, builder: (context) => const TypeDialog());
      },
      child: Container(
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
      ),
    );
  }
}
