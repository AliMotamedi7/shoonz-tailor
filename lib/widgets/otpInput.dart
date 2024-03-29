import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OtpInput extends StatefulWidget {
  const OtpInput({super.key, required this.controller});

  final TextEditingController controller;
  @override
  State<OtpInput> createState() => _OtpInputState();
}

class _OtpInputState extends State<OtpInput> {
  final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: const TextStyle(
        fontSize: 20,
        color: Color.fromRGBO(30, 60, 87, 1),
        fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(color: const Color(0xff005200)),
      borderRadius: BorderRadius.circular(10),
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
