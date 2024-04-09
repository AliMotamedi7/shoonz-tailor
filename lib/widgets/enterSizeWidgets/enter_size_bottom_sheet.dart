import 'package:flutter/material.dart';
import 'package:shoonz_tailor/constants/appColors.dart';

class EnterSizeTextField extends StatefulWidget {
  const EnterSizeTextField({super.key, required this.controller});

  final TextEditingController controller;

  @override
  State<EnterSizeTextField> createState() => _EnterSizeTextFieldState();
}

class _EnterSizeTextFieldState extends State<EnterSizeTextField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 35,
      child: TextField(
        controller: widget.controller,
        textAlign: TextAlign.center,
        textInputAction: TextInputAction.next,
        cursorColor: AppColors.greenShoonz,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(color: AppColors.greenShoonz),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(color: AppColors.greenShoonz),
          ),
        ),
      ),
    );
  }
}
