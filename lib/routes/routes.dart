import '../screens/start_screen/start_screen.dart';
import '../screens/login_screen/login_screen.dart';
import '../screens/registration_screen/registration_screen.dart';

final routes = {
  '/': (context) => const StartScreen(title: 'Start Screen'),
  '/login': (context) => const LoginScreen(title: 'Login Screen'),
  '/registration': (context) => const RegistrationScreen(title: 'Registration Screen'),
};