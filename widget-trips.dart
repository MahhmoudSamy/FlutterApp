import 'package:flutter/material.dart';
//
class Item extends StatelessWidget {
  const Item({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        width: double.infinity,
        height: 150,
        padding: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const Text(
                      '10:30 am',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.car_crash_outlined,
                          color: Color.fromARGB(241, 49, 197, 66),
                          size: 20,
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text(
                          'Today',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: const [
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(241, 49, 197, 66),
                      child: Icon(
                        Icons.car_crash_outlined,
                        color: Colors.white60,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(241, 49, 197, 66),
                      child: Icon(
                        Icons.person,
                        color: Colors.white60,
                      ),
                    ),
                  ],
                )
              ],
            ),
            const Spacer(),
            const Text(
                'New Cairo, Cairo'
            ),
            const Spacer(),
            const Text(
                'Rehab City, Cairo'
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
