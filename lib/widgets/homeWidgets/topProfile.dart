import 'package:flutter/material.dart';

class TopProfile extends StatelessWidget {
  const TopProfile(
      {super.key, required this.phoneNumber, required this.tailorName});

  final String phoneNumber;
  final String tailorName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.center,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
          color: const Color(0xff005200),
          borderRadius: BorderRadius.circular(20)),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: ListTile(
          leading: const CircleAvatar(
            backgroundColor: Colors.white,
          ),
          title: Text(
            phoneNumber,
            textAlign: TextAlign.start,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            tailorName,
            style: const TextStyle(color: Colors.white),
          ),
          trailing: IconButton(
            icon: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: const Color(0xff347533),
              ),
              child: const Icon(
                Icons.settings_outlined,
                color: Colors.white,
              ),
            ),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
