import 'package:flutter/material.dart';

class CustomerDateButton extends StatelessWidget {
  const CustomerDateButton(
      {super.key,
      required this.isDate,
      required this.onTap,
      required this.buttonName});

  final bool isDate;
  final VoidCallback onTap;
  final String buttonName;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5),
      height: 22,
      width: 45,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 0,
            padding: EdgeInsets.zero,
            backgroundColor: isDate ? Colors.black : Colors.grey,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
        onPressed: onTap,
        child: Text(
          buttonName,
          maxLines: 1,
          style: const TextStyle(color: Colors.white, fontSize: 13),
        ),
      ),
    );
  }
}
