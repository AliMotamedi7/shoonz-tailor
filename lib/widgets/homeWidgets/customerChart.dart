import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CustomerChart extends StatefulWidget {
  const CustomerChart({super.key});

  @override
  State<CustomerChart> createState() => _CustomerChartState();
}

class _CustomerChartState extends State<CustomerChart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height / 3.7,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: const Color(0xffb2cab2),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "تعداد سفارشات : ۱۰۰ عدد",
                textAlign: TextAlign.end,
                textDirection: TextDirection.rtl,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    decoration: TextDecoration.underline),
              ),
              Text(
                "فروش",
                textAlign: TextAlign.end,
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width,
              child: LineChart(
                LineChartData(
                  baselineY: 100,
                  maxX: 10,
                  minX: 0,
                  minY: 30,
                  maxY: 100,
                  borderData: FlBorderData(
                      border: const Border.fromBorderSide(BorderSide.none)),
                  gridData: const FlGridData(
                      drawHorizontalLine: false, drawVerticalLine: true),
                  titlesData: const FlTitlesData(
                    topTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: false,
                      ),
                    ),
                    rightTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                  ),
                  lineBarsData: [
                    LineChartBarData(
                        isCurved: true,
                        barWidth: 2,
                        color: const Color(0xff005200),
                        spots: [
                          const FlSpot(0, 25),
                          const FlSpot(2, 40),
                          const FlSpot(3.5, 80),
                          const FlSpot(5, 40),
                          const FlSpot(6, 50),
                          const FlSpot(8, 90),
                          const FlSpot(10, 90),
                        ]),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
