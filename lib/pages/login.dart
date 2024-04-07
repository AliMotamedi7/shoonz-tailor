import 'dart:io';

import 'package:flutter/material.dart';
import 'package:shoonz_tailor/widgets/loginInput.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController phoneController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    phoneController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          top: Platform.isAndroid ? false : true,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "شونز خیاطی",
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(fontSize: 28),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: Image.asset("assets/images/Account-amico.png"),
                ),
                LoginInput(
                  controller: phoneController,
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: 58,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        backgroundColor: const Color(0xff005200)),
                    onPressed: () {
                      Navigator.pushNamed(context, "/otp");
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "ورود",
                          textAlign: TextAlign.center,
                          textDirection: TextDirection.rtl,
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.person_outline,
                          color: Colors.white,
                          size: 35,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "ورود شما به معنای پذیرش سایت و حریم خصوصی می باشد",
                  textDirection: TextDirection.rtl,
                  maxLines: 2,
                  style: TextStyle(color: Color(0xff005200), fontSize: 15),
                )
              ],
            ),
          )),
    );
  }
}
