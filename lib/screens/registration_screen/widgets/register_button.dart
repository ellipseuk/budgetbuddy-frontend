import 'package:flutter/material.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
            width: 300,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: const Text('Register'),
            ),
          );
  }
}