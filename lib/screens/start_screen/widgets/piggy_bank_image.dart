import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class PiggyBankImage extends StatelessWidget {
  const PiggyBankImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/images/piggy_bank.svg",
      width: 250,
      height: 190,
    );
  }
}
