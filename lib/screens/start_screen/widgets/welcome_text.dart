import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  final String title;

  const WelcomeText({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Welcome to $title',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontSize: 14,
              ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          width: 300,
          child: Text(
            'Take control of your finances and achieve your financial goals with ease. Let\'s get started on your journey to financial freedom!',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontSize: 12,
                ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
