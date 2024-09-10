import 'package:budget_buddy/screens/registration_screen/widgets/confirm_password_field.dart';
import 'package:budget_buddy/screens/registration_screen/widgets/password_field.dart';
import 'package:budget_buddy/screens/registration_screen/widgets/email_field.dart';
import 'package:budget_buddy/screens/registration_screen/widgets/full_name_field.dart';
import 'package:budget_buddy/screens/registration_screen/widgets/register.dart';
import 'package:budget_buddy/screens/registration_screen/widgets/register_button.dart';
import 'package:flutter/material.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({super.key});

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  bool _isObscure = true;
  bool _confirmIsObscure = true;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Register(),
          const SizedBox(height: 35),
          const FullNameField(),
          const SizedBox(height: 15),
          const EmailField(),
          const SizedBox(height: 15),
          PasswordField(
            isObscure: _isObscure, 
            toggleVisibility: () {
              setState(() {
                _isObscure = !_isObscure;
              });
            }
          ),
          const SizedBox(height: 15),
          ConfirmPasswordField(
            confirmIsObscure: _confirmIsObscure, 
            confirmToggleVisibility: () {
              setState(() {
                _confirmIsObscure = !_confirmIsObscure;
              });
            }
          ),
          const SizedBox(height: 70),
          const RegisterButton(),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
