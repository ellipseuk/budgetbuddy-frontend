import 'package:flutter/material.dart';
import 'package:budget_buddy/screens/start_screen/widgets/logo_with_title.dart';
import 'package:budget_buddy/screens/start_screen/widgets/piggy_bank_image.dart';
import 'package:budget_buddy/screens/start_screen/widgets/welcome_text.dart';
import 'package:budget_buddy/screens/start_screen/widgets/login_button.dart';
import 'package:budget_buddy/screens/start_screen/widgets/register_button.dart';
import 'package:budget_buddy/screens/start_screen/widgets/footer_text.dart';

class StartScreen extends StatefulWidget {
  final String title = 'BudgetBuddy';
  const StartScreen({super.key, required String title});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: LogoWithTitle(title: widget.title),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 60),
              const PiggyBankImage(),
              const SizedBox(height: 35),
              WelcomeText(title: widget.title),
              const SizedBox(height: 35),
              const LoginButton(),
              const SizedBox(height: 15),
              const RegisterButton(),
              const SizedBox(height: 25),
              const FooterText(),
              const SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
