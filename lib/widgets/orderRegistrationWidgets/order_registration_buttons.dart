import 'package:flutter/material.dart';
import 'package:shoonz_tailor/constants/appColors.dart';

class OrderRestrationButtons extends StatelessWidget {
  const OrderRestrationButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              backgroundColor: AppColors.greenDark,
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          onPressed: () {},
          label: const Text(
            "چاپ",
            textDirection: TextDirection.rtl,
            style: TextStyle(color: Colors.black),
          ),
          icon: Container(
            decoration:
                BoxDecoration(color: Colors.grey[400], shape: BoxShape.circle),
            padding: const EdgeInsets.all(3),
            child: const Icon(
              Icons.keyboard_arrow_down,
              color: Colors.black,
            ),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              backgroundColor: AppColors.greenShoonz,
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          onPressed: () {},
          label: const Text(
            "ثبت",
            textDirection: TextDirection.rtl,
            style: TextStyle(color: Colors.white),
          ),
          icon: Container(
            decoration: const BoxDecoration(
                color: Color(0xff347533), shape: BoxShape.circle),
            padding: const EdgeInsets.all(3),
            child: const Icon(
              Icons.keyboard_arrow_down,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              backgroundColor: AppColors.greenDark,
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          onPressed: () {},
          label: const Text(
            "دریافتی",
            textDirection: TextDirection.rtl,
            style: TextStyle(color: Colors.black),
          ),
          icon: Container(
            decoration:
                BoxDecoration(color: Colors.grey[400], shape: BoxShape.circle),
            padding: const EdgeInsets.all(3),
            child: const Icon(
              Icons.keyboard_arrow_down,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
