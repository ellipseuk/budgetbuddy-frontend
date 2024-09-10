import 'package:flutter/material.dart';

class FooterText extends StatelessWidget {
  const FooterText({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Text(
        'By using FinanceIQ you agree to FinanceIQ’s Terms of Use, Privacy Policy and Pre-contractual Terms',
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
              fontSize: 10,
            ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
