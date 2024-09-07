import 'package:flutter/material.dart';
class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an acconunt?",
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
            fontSize:12,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(width: 5),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/registration');
          },
          child: 
            Text(
              "Register",
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