import 'package:flutter/material.dart';

class CustomerListName extends StatelessWidget {
  const CustomerListName({super.key, required this.num});

  final int num;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              decoration: const BoxDecoration(
                color: Color(0xffb2cab2),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  topRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                ),
              ),
              child: Text(num.toString()),
            ),
            const SizedBox(
              width: 5,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(7),
                decoration: const BoxDecoration(
                  color: Color(0xffb2cab2),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(child: info(Icons.person, "امیر رضا مجد")),
                    Expanded(
                        child: info(Icons.person_pin_rounded, "amirrezamajd")),
                    Expanded(child: info(Icons.phone_iphone, "۰۹۰۲۲۲۵۹۲۹۳")),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget info(IconData iconData, String information) {
    return Row(
      children: [
        Icon(
          iconData,
          color: Colors.black,
          size: 20,
        ),
        Expanded(
          child: Text(
            information,
            textAlign: TextAlign.start,
            overflow: TextOverflow.ellipsis,
            textDirection: TextDirection.rtl,
            style: const TextStyle(
                color: Colors.black,
                overflow: TextOverflow.ellipsis,
                fontSize: 12),
          ),
        ),
      ],
    );
  }
}
