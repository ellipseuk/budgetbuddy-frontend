import 'package:budget_buddy/screens/send_code_screen/widgets/code_field.dart';
import 'package:budget_buddy/screens/send_code_screen/widgets/code_image.dart';
import 'package:budget_buddy/screens/send_code_screen/widgets/verify.dart';
import 'package:flutter/material.dart';

class SendCodeBody extends StatelessWidget {
  const SendCodeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
          width: 300,
          child: Column(
            children: [
            SizedBox(height: 90),
            CodeImage(),
            SizedBox(height: 100),
            Verify(),
            SizedBox(height: 25),
            CodeField(),
          ]
        ),
      )
    );
  }
}