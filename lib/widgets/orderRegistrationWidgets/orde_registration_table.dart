import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OrderRegistrationTable extends StatefulWidget {
  const OrderRegistrationTable({super.key});

  @override
  State<OrderRegistrationTable> createState() => _OrderRegistrationTableState();
}

class _OrderRegistrationTableState extends State<OrderRegistrationTable> {
  @override
  Widget build(BuildContext context) {
    return Table(
      border: const TableBorder(
        horizontalInside: BorderSide(style: BorderStyle.none),
        verticalInside: BorderSide(style: BorderStyle.none),
      ),
      textDirection: TextDirection.rtl,
      children: const [
        TableRow(
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
            ])
      ],
    );
  }
}
