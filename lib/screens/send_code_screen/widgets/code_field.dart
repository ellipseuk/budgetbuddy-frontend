import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CodeField extends StatefulWidget {
  const CodeField({super.key});

  @override
  State<CodeField> createState() => _CodeFieldState();
}

class _CodeFieldState extends State<CodeField> {
  bool InvalidOtp = false;
  int resendTime = 120;
  late Timer countdownTimer;
  TextEditingController txt1 = TextEditingController();
  TextEditingController txt2 = TextEditingController();
  TextEditingController txt3 = TextEditingController();
  TextEditingController txt4 = TextEditingController();
  TextEditingController txt5 = TextEditingController();

  @override
  void initState() {
    startTimer();
    super.initState();
  }
  startTimer(){
    countdownTimer = Timer.periodic(const Duration(seconds: 1), (timer){
      setState((){
        resendTime = resendTime -1;
      });
      if(resendTime<1){
        countdownTimer.cancel();
      }
    });
  }

  stopTimer() {
    if (countdownTimer.isActive) {
      countdownTimer.cancel();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            myInputBox(context, txt1),
            myInputBox(context, txt2),
            myInputBox(context, txt3),
            myInputBox(context, txt4),
            myInputBox(context, txt5),
          ],
        ),
        const SizedBox(height: 12),
        Text(InvalidOtp ? 'Invalid code!' : '',
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Colors.redAccent
        ),
        
        ),
        const SizedBox(height: 12),
        SizedBox(
          width: 300,
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              final otp = txt1.text + txt2.text + txt3.text + txt4.text + txt5.text;
              if (otp == "14881"){
                // Go to home, welcome
              }else{
                setState(() {
                  InvalidOtp = true;
                });
              }
            },
            style: ElevatedButton.styleFrom(
              side: const BorderSide(color: Colors.grey),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            child: const Text('Send code')
          ),
        ),
        const SizedBox(height: 15),
        resendTime != 0 ? Text(
          "You can resend the code after $resendTime seconds(s)", 
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
            fontSize: 14, 
            fontWeight: FontWeight.w400
            ),
        )
        : const SizedBox()
      ],
    );
  }
}

Widget myInputBox(BuildContext context, TextEditingController controller) {
  return Container(
    height: 48,
    width: 48,
    decoration: BoxDecoration(
      border: Border.all(width: 1, color: Colors.deepPurple),
      borderRadius: BorderRadius.circular(12)
    ),
    child: Center(
      child: TextField(
        controller: controller,
        maxLength: 1,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        style: const TextStyle(
        fontSize: 24, 
        fontFamily: 'Roboto', 
        fontWeight: FontWeight.w600
        ),
        decoration: const InputDecoration(
          counterText: '',
          contentPadding: EdgeInsets.only(left:3 ),
          isDense: true,
          border: InputBorder.none
        ),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        onSubmitted: (value) {
          if (value.isEmpty) {
            FocusScope.of(context).previousFocus();
          }
        },
        onEditingComplete: () {
          if (controller.text.isEmpty) {
            FocusScope.of(context).previousFocus();
          }
        },
      ),
    )
  );
}