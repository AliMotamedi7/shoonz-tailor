import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shoonz_tailor/widgets/enterSizeWidgets/clothes_box.dart';
import 'dart:io';
import 'package:shoonz_tailor/widgets/enterSizeWidgets/grid_clothes_box.dart';

class EnterSize extends StatelessWidget {
  EnterSize({super.key});

  List<String> cloth = [
    "پیراهن",
    "آستین",
    "تیره",
    "کمر",
    "دامن",
    "کالر",
    "شلوار",
    "پاچه",
  ];

  List<String> type = [
    "جیگ",
    "دامن و پیراهن",
    "کالر",
    "جیب ها",
    "سرآستین",
    "شلوار",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        top: Platform.isAndroid ? true : false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: ListView(
            shrinkWrap: true,
            children: [
              if (Platform.isAndroid)
                const SizedBox(
                  height: 10,
                ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back_rounded),
                    ),
                    const Text(
                      "اندازه های امیرضامجد",
                      textAlign: TextAlign.start,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  itemCount: cloth.length,
                  itemBuilder: (context, index) {
                    return ClotheBox(name: cloth[index]);
                  }),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height / 3,
                child: GridView.count(
                  crossAxisCount: 3,
                  children: List.generate(
                      type.length,
                      (index) => GridCothesBox(
                            type: type[index],
                          )),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        elevation: 0,
                        backgroundColor: const Color(0xff005200),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {},
                    child: const Text(
                      "تایید اطلاعات",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
