import 'package:flutter/material.dart';
import 'package:shoonz_tailor/constants/appColors.dart';

class SettingsCard extends StatelessWidget {
  const SettingsCard(
      {super.key, required this.icon, required this.name, required this.onTap});

  final IconData icon;
  final String name;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
          color: AppColors.greenDark, borderRadius: BorderRadius.circular(10)),
      child: Row(
        textDirection: TextDirection.rtl,
        children: [
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.greenShoonz),
            child: Icon(
              icon,
              color: Colors.white,
              size: 40,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text(name),
        ],
      ),
    );
  }
}
