import 'package:flutter/material.dart';

class ConfirmPasswordField extends StatelessWidget {
  final bool confirmIsObscure;
  final VoidCallback confirmToggleVisibility;
  
  const ConfirmPasswordField({
    super.key,
    required this.confirmIsObscure,
    required this.confirmToggleVisibility,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Password',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 14),
        ),
        const SizedBox(height: 5),
        TextField(
          obscureText: confirmIsObscure,
          decoration: InputDecoration(
            suffixIcon: IconButton(
              icon: Icon(confirmIsObscure ? Icons.visibility_off : Icons.visibility),
              onPressed: confirmToggleVisibility,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            hintText: 'Enter your password',
          ),
        ),
      ],
    );
  }
}