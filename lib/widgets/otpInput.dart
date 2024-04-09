import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:shoonz_tailor/constants/appColors.dart';

class OtpInput extends StatefulWidget {
  const OtpInput({super.key, required this.controller});

  final TextEditingController controller;
  @override
  State<OtpInput> createState() => _OtpInputState();
}

class _OtpInputState extends State<OtpInput> {
  final defaultPinTheme = PinTheme(
    width: 65,
    height: 65,
    textStyle: const TextStyle(
        fontSize: 25,
        color:AppColors.greenShoonz,
        fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(color: AppColors.greenShoonz),
      borderRadius: BorderRadius.circular(10),
      color: AppColors.greenLight,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        alignment: Alignment.center,
        child: Pinput(
          defaultPinTheme: defaultPinTheme,
          focusedPinTheme: defaultPinTheme,
          controller: widget.controller,
          length: 4,
          androidSmsAutofillMethod: AndroidSmsAutofillMethod.smsRetrieverApi,
          keyboardType: TextInputType.number,
          closeKeyboardWhenCompleted: true,
        ));
  }
}
