// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jalali_table_calendar/jalali_table_calendar.dart';
import 'package:shoonz_tailor/constants/appColors.dart';

class DeliveryDate extends StatefulWidget {
  const DeliveryDate({super.key});

  @override
  State<DeliveryDate> createState() => _DeliveryDateState();
}

class _DeliveryDateState extends State<DeliveryDate> {
  String numberFormatter(String number, bool persianNumber) {
    Map numbers = {
      '0': '۰',
      '1': '۱',
      '2': '۲',
      '3': '۳',
      '4': '۴',
      '5': '۵',
      '6': '۶',
      '7': '۷',
      '8': '۸',
      '9': '۹',
    };
    if (persianNumber)
      numbers.forEach((key, value) => number = number.replaceAll(key, value));
    return number;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            if (Platform.isAndroid)
              SizedBox(
                height: 10,
              ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  "تاریخ تحویل",
                  textAlign: TextAlign.start,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width * .9,
                height: 400,
                child: JalaliTableCalendar(
                  isRange: false,
                  context: context,
                  textDirection: TextDirection.rtl,
                  initialTime: TimeOfDay.now(),
                  locale: Locale("fa"),
                  marker: (date, events) {
                    return Positioned(
                      left: 0,
                      top: -3,
                      child: Container(
                        decoration: BoxDecoration(
                            color: AppColors.greenShoonz,
                            shape: BoxShape.rectangle),
                        padding: const EdgeInsets.all(6.0),
                        child: Center(
                          child: Text(numberFormatter(
                              (events?.length).toString(), true)),
                        ),
                      ),
                    );
                  },
                  initialDatePickerMode: DatePickerModeCalendar.day,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * .8,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        alignment: Alignment.center,
                        backgroundColor: AppColors.greenShoonz,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        )),
                    onPressed: () {},
                    child: Text(
                      "انتخاب",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * .8,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        alignment: Alignment.center,
                        backgroundColor: AppColors.greenLight,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )),
                    onPressed: () {},
                    child: Text(
                      "انصراف",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.greenShoonz,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
