import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
            children:[
                const Expanded(child: Divider()),
                const SizedBox(width: 5),    
                Text("or",style: Theme.of(context).textTheme.bodySmall,),
                const SizedBox(width: 5),        
                const Expanded(child: Divider()),
            ]
    );
  }
}