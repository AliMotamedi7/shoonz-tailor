import 'package:flutter/material.dart';
import 'package:shoonz_tailor/constants/appColors.dart';

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
            decoration: const BoxDecoration(color: AppColors.greyBox),
            width: MediaQuery.sizeOf(context).width,
            padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
            child: const Row(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              textDirection: TextDirection.rtl,
              children: [
                Expanded(
                  flex: 33,
                  child: SizedBox(),
                ),
                Expanded(
                  flex: 185,
                  child: Text(
                    "اطلاعات سفارش",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                Expanded(
                  flex: 44,
                  child: Text(
                    "تعداد",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                Expanded(
                  flex: 95,
                  child: Text(
                    "فی",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                Expanded(
                  flex: 197,
                  child: Text(
                    "قیمت کل",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                Expanded(
                  flex: 112,
                  child: SizedBox(),
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
                        color: AppColors.greenLight,
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
                          style: TextStyle(
                              color: AppColors.greenShoonz, fontSize: 14),
                        ),
                        const Text(
                          "۱۰۰,۰۰۰",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: AppColors.greenShoonz),
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 3),
                            borderRadius: BorderRadius.circular(5),
                            color: AppColors.greenShoonz,
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
