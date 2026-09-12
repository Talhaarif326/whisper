import 'package:flutter/material.dart';

import '../../barrel.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton({
    super.key,
    required this.onPressed,
    required this.name,
  });
  final VoidCallback onPressed;
  final String name;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        name,
        style: TextStyle(
          fontSize: AppSize.sizeDouble20,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
