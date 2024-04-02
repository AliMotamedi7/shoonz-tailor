import 'package:flutter/material.dart';
import 'package:shoonz_tailor/widgets/customerWidgets/customerDateButton.dart';
import 'package:shoonz_tailor/widgets/customerWidgets/customer_list_name.dart';

class CustomerPage extends StatefulWidget {
  const CustomerPage({super.key});

  @override
  State<CustomerPage> createState() => _CustomerPageState();
}

class _CustomerPageState extends State<CustomerPage> {
  bool isToday = false;
  bool isMonth = false;
  bool isHoleList = false;

  void callBack;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SafeArea(
              child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomerDateButton(
                        isDate: isToday,
                        onTap: () {
                          setState(() {
                            isToday = true;
                            isHoleList = false;
                            isMonth = false;
                          });
                        },
                        buttonName: "امروز"),
                    CustomerDateButton(
                        isDate: isMonth,
                        onTap: () {
                          setState(() {
                            isMonth = true;
                            isHoleList = false;
                            isToday = false;
                          });
                        },
                        buttonName: "ماهانه"),
                    CustomerDateButton(
                        isDate: isHoleList,
                        onTap: () {
                          setState(() {
                            isHoleList = true;
                            isToday = false;
                            isMonth = false;
                          });
                        },
                        buttonName: "کلی"),
                    const SizedBox(
                      width: 60,
                    ),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () => Navigator.pop(context),
                            child: const Icon(Icons.arrow_back),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            "لیست مشتریان",
                            textAlign: TextAlign.start,
                            textDirection: TextDirection.rtl,
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width,
              child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return CustomerListName(
                      num: index + 1,
                    );
                  }),
            ),
          ),
        ],
      ))),
    );
  }
}
