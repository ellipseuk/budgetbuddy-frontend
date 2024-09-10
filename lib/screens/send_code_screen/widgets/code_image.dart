import 'package:flutter/material.dart';

class CodeImage extends StatelessWidget {
  const CodeImage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Image.asset(
      "assets/images/code.png",
      height: 220,
      width: 280,
    );
  }
}