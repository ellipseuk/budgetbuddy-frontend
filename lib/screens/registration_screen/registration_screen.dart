import 'package:budget_buddy/screens/registration_screen/widgets/registration_body.dart';
import 'package:budget_buddy/widgets/return_arrow_app_bar.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ReturnArrowAppBar(),
      body:SingleChildScrollView(child: RegistrationBody()),
    );
  }
}