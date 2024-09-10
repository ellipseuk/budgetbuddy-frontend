import 'package:flutter/material.dart';

class ResendCode extends StatelessWidget {
  const ResendCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Didn't receive the code?",
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
            fontSize:12,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(width: 5),
        GestureDetector(
          onTap: () {
            // resend logic
          },
          child: 
            Text(
              "Resend",
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color:Colors.deepPurple,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              )
            ),
        ),
      ],
    );
  }
}