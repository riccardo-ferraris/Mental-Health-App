import 'package:flutter/material.dart';

class EmoticonBox extends StatelessWidget {
  const EmoticonBox({
    super.key,
    required this.emoji,
    required this.title,
  });

  final String emoji;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            // boxShadow: const [
            //   BoxShadow(
            //       color: Colors.black54,
            //       blurRadius: 5.0,
            //       offset: Offset(0.0, 5))
            // ],
            borderRadius: BorderRadius.circular(10),
            color: Colors.blue[500],
          ),
          width: 70,
          height: 70,
          child: Center(
            child: Text(
              emoji,
              style: const TextStyle(fontSize: 30),
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          title,
          style: TextStyle(color: Colors.blue[50], fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
