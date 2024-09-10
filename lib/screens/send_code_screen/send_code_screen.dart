import 'package:budget_buddy/screens/send_code_screen/widgets/send_code_body.dart';
import 'package:budget_buddy/widgets/return_arrow_app_bar.dart';
import 'package:flutter/material.dart';

class SendCodeScreen extends StatelessWidget {
  const SendCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ReturnArrowAppBar(),
      body: SingleChildScrollView(child: SendCodeBody()),
    );
  }
}