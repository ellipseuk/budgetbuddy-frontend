import 'package:flutter/material.dart';

class FullNameField extends StatelessWidget {
  const FullNameField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Full Name',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 14),
        ),
        const SizedBox(height: 5),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            hintText: 'Enter your full name',
          ),
        ),
      ],
    );
  }
}