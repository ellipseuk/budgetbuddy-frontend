import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
      appBar: AppBar(
        title: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const FlutterLogo(),
              const SizedBox(width: 10),
              Text(widget.title),
            ],
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              "assets/images/piggy_bank.svg",
              width: 250,
              height: 190,
            ),
            const SizedBox(height: 35), 
            Text('Welcome to ${widget.title}'),
            const SizedBox(height: 10),
            const SizedBox(
              width: 300,
              child: Text(
              'Take control of your finances and achieve your financial goals with ease. Let\'s get started on your journey to financial freedom!',
              style: TextStyle(
                color: Color.fromRGBO(108, 117, 125, 100),
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 300,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: const Text('Login'),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 300,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/registration');
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black, 
                  backgroundColor: Colors.white,
                  side: const BorderSide(color: Colors.grey),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: const Text('Register'),
              ),
            ),
            const SizedBox(height: 20),
            const SizedBox(
              width: 300,
              child: Text(
              'By using FinanceIQ you agree to FinanceIQ’s Terms of Use, Privacy Policy and Pre-contractual Terms',
              style: TextStyle(
                color: Color.fromRGBO(108, 117, 125, 100),
                fontSize: 10,
              ),
              textAlign: TextAlign.center,
            ),
            ),
          ],
        ),
      ),
    );
  }
}