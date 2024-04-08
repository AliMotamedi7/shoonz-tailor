import 'package:flutter/material.dart';

class OrderRegistrationTable extends StatefulWidget {
  const OrderRegistrationTable({super.key});

  @override
  State<OrderRegistrationTable> createState() => _OrderRegistrationTableState();
}

class _OrderRegistrationTableState extends State<OrderRegistrationTable> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(color: Color(0xfff2f6f2)),
            width: MediaQuery.sizeOf(context).width,
            padding: const EdgeInsets.all(8),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              textDirection: TextDirection.rtl,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "اطلاعات سفارش",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "تعداد",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "فی",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "قیمت کل",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    width: MediaQuery.sizeOf(context).width,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: const Color(0xffd9e5da),
                        borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      textDirection: TextDirection.rtl,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "شلوار مردانه بلوچی",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        ),
                        const Text(
                          "۲",
                          textAlign: TextAlign.center,
                          style:
                              TextStyle(color: Color(0xff005200), fontSize: 14),
                        ),
                        const Text(
                          "۱۰۰,۰۰۰",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Color(0xff005200)),
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 3),
                            borderRadius: BorderRadius.circular(5),
                            color: const Color(0xff005200),
                          ),
                          child: const Text(
                            "۲,۲۵۰,۰۰۰تومان",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(3),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.grey[400], shape: BoxShape.circle),
                          child: const Icon(
                            Icons.print,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
