import 'package:flutter/material.dart';

class OrderRegistrationTable extends StatefulWidget {
  const OrderRegistrationTable({super.key});

  @override
  State<OrderRegistrationTable> createState() => _OrderRegistrationTableState();
}

class _OrderRegistrationTableState extends State<OrderRegistrationTable> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Table(
        border: const TableBorder(
          horizontalInside: BorderSide(
              style: BorderStyle.solid, color: Colors.white, width: 4),
          verticalInside: BorderSide(style: BorderStyle.none),
        ),
        textDirection: TextDirection.rtl,
        children: [
          const TableRow(
              decoration: BoxDecoration(
                color: Color(0xffd9e5da),
              ),
              children: [
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "اطلاعات سفارش",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "تعداد",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "فی",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "قیمت کل",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
                TableCell(child: Text(""))
              ]),
          ...List.generate(
              3,
              (index) => TableRow(
                    decoration: BoxDecoration(
                        color: const Color(0xffd9e5da),
                        borderRadius: BorderRadius.circular(10)),
                    children: [
                      const TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "شلوار مردانه بلوچی",
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      const TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "۲",
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xff005200),
                            ),
                          ),
                        ),
                      ),
                      const TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "۱۰۰,۰۰۰",
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xff005200),
                            ),
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: const Color(0xff005200),
                            border: Border.all(color: Colors.white, width: 3),
                          ),
                          child: const Text(
                            "۲,۲۵۰,۰۰۰ تومان",
                            textAlign: TextAlign.center,
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.grey[400], shape: BoxShape.circle),
                          child: const Icon(
                            Icons.print,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  )),
        ],
      ),
    );
  }
}
