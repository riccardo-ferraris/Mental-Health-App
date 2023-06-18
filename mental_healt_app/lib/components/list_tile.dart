import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  const MyListTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.color,
  });

  final String title;
  final String subtitle;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListTile(
        title: Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Text(
            title,
            style: TextStyle(
              color: Colors.grey[700],
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(color: Colors.grey[700]),
        ),
        leading: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(
            icon,
            size: 40,
            color: Colors.white,
          ),
        ),
        trailing: const Icon(Icons.more_horiz),
      ),
    );
  }
}
