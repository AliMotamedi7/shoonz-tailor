import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shoonz_tailor/constants/appColors.dart';

class TypeDialog extends StatefulWidget {
  const TypeDialog({super.key});

  @override
  State<TypeDialog> createState() => _TypeDialogState();
}

class _TypeDialogState extends State<TypeDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      alignment: Alignment.center,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TypeList(typeTitle: "تیار", typeSubTitle: "تیار"),
            TypeList(typeTitle: "تیار", typeSubTitle: "تیار"),
            TypeList(typeTitle: "تیار", typeSubTitle: "تیار"),
          ],
        ),
      ),
    );
  }
}

class TypeList extends StatefulWidget {
  const TypeList(
      {super.key, required this.typeTitle, required this.typeSubTitle});

  final String typeTitle;
  final String typeSubTitle;

  @override
  State<TypeList> createState() => _TypeListState();
}

class _TypeListState extends State<TypeList> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          textDirection: TextDirection.rtl,
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(
              widget.typeTitle,
              textAlign: TextAlign.start,
              textDirection: TextDirection.rtl,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
              width: MediaQuery.sizeOf(context).width,
              height: 100,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                            color: AppColors.greenDark,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset("assets/images/clotheIcon.png"),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            widget.typeSubTitle,
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
