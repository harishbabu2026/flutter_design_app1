import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  final Color color;
  final String head;
  final String desc;
  final Icon icon;

  const TaskScreen(
      {super.key,
      required this.color,
      required this.head,
      required this.desc,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
          child: icon,
        ),
        SizedBox(
          width: 15,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              head,
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            Text(
              desc,
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
            ),
          ],
        )
      ],
    );
  }
}
