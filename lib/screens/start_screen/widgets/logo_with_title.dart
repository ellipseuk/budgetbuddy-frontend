import 'package:flutter/material.dart';

class LogoWithTitle extends StatelessWidget {
  final String title;

  const LogoWithTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const FlutterLogo(),
            const SizedBox(width: 10),
            Text(
              title,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontSize: 24,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
