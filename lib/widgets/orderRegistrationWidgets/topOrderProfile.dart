import 'package:flutter/material.dart';

class TopOrderProfile extends StatelessWidget {
  TopOrderProfile({super.key, required this.phoneNumber, required this.name});

  final String phoneNumber;
  final String name;
  List<String> nameList = [
    "امیررضامجد",
    "رامین حسنی",
    "میلاد",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: const Color(0xff005200),
          borderRadius: BorderRadius.circular(20)),
      child: Directionality(
          textDirection: TextDirection.rtl,
          child: ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.white,
            ),
            title: Text(
              phoneNumber,
              textAlign: TextAlign.start,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
            ),
            subtitle: Text(
              name,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 13),
            ),
            trailing: MenuAnchor(
              builder: (context, controller, child) {
                return GestureDetector(
                  onTap: () {
                    if (controller.isOpen) {
                      controller.close();
                    } else {
                      controller.open();
                    }
                  },
                  child: Container(
                    width: 100,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color(0xff347533)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        Text(
                          name,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                );
              },
              menuChildren: List.generate(
                  nameList.length,
                  (index) => MenuItemButton(
                          child: Text(
                        name[index],
                        maxLines: 2,
                        textDirection: TextDirection.rtl,
                      ))),
            ),
          )),
    );
  }
}
