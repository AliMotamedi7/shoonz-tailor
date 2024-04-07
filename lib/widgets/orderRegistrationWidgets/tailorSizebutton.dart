import 'package:flutter/material.dart';

class SizeTailorButton extends StatelessWidget {
  const SizeTailorButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          color: const Color(0xffd9e5da),
          borderRadius: BorderRadius.circular(15)),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "واردکردن اندازه های(امیررضامجد)",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(color: Colors.black, fontSize: 12),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: Colors.grey[400],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      )),
                  onPressed: () {},
                  child: const Row(
                    children: [
                      Text(
                        "تاریخچه سفارش",
                        style: TextStyle(fontSize: 12, color: Colors.black),
                      ),
                      Icon(
                        Icons.timer_outlined,
                        color: Colors.black,
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
