import 'package:flutter/material.dart';

class RemoveFromCartButton extends StatelessWidget {
  final Function()? function;
  const RemoveFromCartButton({
    super.key, this.function,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: function,
      style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(Colors.yellow)),
      child: const Text(
        'Remove from cart',
        style: TextStyle(color: Colors.blue),
      ),
    );
  }
}