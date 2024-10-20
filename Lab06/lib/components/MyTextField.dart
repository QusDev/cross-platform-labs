import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({super.key, required this.labelText});

  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$labelText:',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        const TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
          ),
        )
      ],
    );
  }
}
