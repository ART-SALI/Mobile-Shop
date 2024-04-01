import 'package:flutter/material.dart';

class AddToCartButton extends StatelessWidget {
  final Function()? function;
  const AddToCartButton({
    super.key, this.function,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: function,
      style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(Colors.yellow)),
      child: const Text(
        'Add to cart',
        style: TextStyle(color: Colors.blue),
      ),
    );
  }
}