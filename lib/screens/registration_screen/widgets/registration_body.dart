import 'package:budget_buddy/screens/registration_screen/widgets/registration_form.dart';
import 'package:flutter/material.dart';

class RegistrationBody extends StatelessWidget {
  const RegistrationBody({super.key});

  @override
  Widget build(BuildContext context) {
      return const Center(
      child: SizedBox(
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            FlutterLogo(size: 90),
            SizedBox(height: 20),
            RegistrationForm(),
          ],
        ),
      ),
    );
  }
}