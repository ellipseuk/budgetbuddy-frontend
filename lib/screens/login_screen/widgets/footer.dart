import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
        width:90,
        height:48,
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/');
          }, 
          child: SvgPicture.asset('assets/images/facebook.svg', width:18, height:18),
        )
      ),
      ],
    );
  }
}

//SvgPicture.asset("assets/images/facebook.svg")