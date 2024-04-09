import 'package:flutter/material.dart';
import 'package:shoonz_tailor/constants/appColors.dart';
import 'package:shoonz_tailor/widgets/enterSizeWidgets/enter_size_bottom_sheet.dart';

class ClotheBox extends StatefulWidget {
  const ClotheBox({super.key, required this.name});

  final String name;

  @override
  State<ClotheBox> createState() => _ClotheBoxState();
}

class _ClotheBoxState extends State<ClotheBox> {
  TextEditingController controller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: AppColors.greenLight, borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        textDirection: TextDirection.rtl,
        children: [
          Column(
            children: [
              Text(widget.name),
              SizedBox(
                height: 8,
              ),
              EnterSizeTextField(
                controller: controller,
              ),
            ],
          ),
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.greenDark,
            ),
          ),
        ],
      ),
    );
  }
}
