import 'dart:io';
import 'package:flutter/material.dart';
import 'package:shoonz_tailor/widgets/homeWidgets/customerChart.dart';
import 'package:shoonz_tailor/widgets/homeWidgets/customer_name_list_item.dart';
import 'package:shoonz_tailor/widgets/homeWidgets/orders_list_item.dart';
import 'package:shoonz_tailor/widgets/homeWidgets/topProfile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> name = [
    "امیررضامجد",
    "میلاد صالحی",
    "رامین حسنی",
    "امیررضامجد",
    "میلاد صالحی",
    "رامین حسنی",
    "امیررضامجد",
    "میلاد صالحی",
    "رامین حسنی",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: () {
          Navigator.pushNamed(context, "/orderRegistration");
        },
        backgroundColor: const Color(0xff005200),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 40,
        ),
      ),
      bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          child: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            notchMargin: 5,
            color: const Color(0xffb2cab2),
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.list_alt,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.timelapse,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          )),
      body: SafeArea(
        child: Column(
          children: [
            if (Platform.isAndroid)
              const SizedBox(
                height: 10.0,
              ),
            const TopProfile(
                phoneNumber: "09122758432", tailorName: "نام خیاط"),
            const SizedBox(
              height: 20,
            ),
            const CustomerChart(),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: Colors.grey[200],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      onPressed: () {
                        Navigator.pushNamed(context, "/customer");
                      },
                      child: const Text(
                        "مشاهده همه",
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          color: Color(0xff005200),
                        ),
                      )),
                  const Row(
                    children: [
                      Text(
                        "مشتریان",
                        textAlign: TextAlign.end,
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.supervisor_account_outlined,
                        size: 35,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Container(
              height: 40,
              margin: const EdgeInsets.only(right: 20),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: name.length,
                  itemBuilder: (context, index) {
                    return CustomerNameListItem(customerName: name[index]);
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: Colors.grey[200],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      onPressed: () {
                        Navigator.pushNamed(context, "/order");
                      },
                      child: const Text(
                        "مشاهده همه",
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          color: Color(0xff005200),
                        ),
                      )),
                  const Row(
                    children: [
                      Text(
                        "سفارشات",
                        textAlign: TextAlign.end,
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.list_alt,
                        size: 35,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width,
                child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return const OrdersListItem(orderNumber: "110");
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
