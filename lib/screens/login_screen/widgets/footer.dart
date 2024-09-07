import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width:90,
          height:48,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            style: ElevatedButton.styleFrom(
              side: BorderSide(color: Colors.grey.withOpacity(0.5), width: 1),
              backgroundColor: Colors.white,
              shadowColor: Colors.transparent,
              shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            ), 
            child: SvgPicture.asset('assets/images/facebook.svg', width:18, height:18),
          )
        ),
        SizedBox(
          width:90,
          height:48,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            style: ElevatedButton.styleFrom(
              side: BorderSide(color: Colors.grey.withOpacity(0.5), width: 1),
              backgroundColor: Colors.white,
              shadowColor: Colors.transparent,
              shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            ), 
            child: SvgPicture.asset('assets/images/google.svg', width:18, height:18),
          )
        ),
        SizedBox(
          width:90,
          height:48,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            style: ElevatedButton.styleFrom(
              side: BorderSide(color: Colors.grey.withOpacity(0.5), width: 1),
              backgroundColor: Colors.white,
              shadowColor: Colors.transparent,
              shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            ), 
            child: SvgPicture.asset('assets/images/apple.svg', width:18, height:18),
          )
        ),
      ],
    );
  }
}