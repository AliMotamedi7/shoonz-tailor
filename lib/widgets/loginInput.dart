import 'package:flutter/material.dart';
import 'package:shoonz_tailor/constants/appColors.dart';

class LoginInput extends StatefulWidget {
  const LoginInput({super.key, required this.controller});

  final TextEditingController controller;

  @override
  State<LoginInput> createState() => _LoginInputState();
}

class _LoginInputState extends State<LoginInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: TextField(
          controller: widget.controller,
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.start,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.phone_outlined),
            hintMaxLines: 1,
            hintText: "شماره همراه",
            fillColor: AppColors.greenLight,
            filled: true,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color:AppColors.greenShoonz,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: AppColors.greenShoonz,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
