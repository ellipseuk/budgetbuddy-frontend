import 'package:budget_buddy/screens/login_screen/login_screen.dart';
import 'package:budget_buddy/screens/send_code_screen/send_code_screen.dart';
import 'package:budget_buddy/screens/start_screen/start_screen.dart';
import 'package:budget_buddy/screens/registration_screen/registration_screen.dart';

final routes = {
  '/': (context) => const StartScreen(title: 'Start Screen'),
  '/login': (context) => const LoginScreen(title: 'Login Screen'),
  '/registration': (context) => const RegistrationScreen(title: 'Registration Screen'),
  '/code': (context) => const SendCodeScreen()
};