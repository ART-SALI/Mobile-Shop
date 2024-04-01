import 'package:flutter/material.dart';
import 'package:project_5/widgets/stateless_widgets/add_to_cart_button.dart';
import 'package:project_5/widgets/stateless_widgets/remove_from_cart_button.dart';


class ShopItem extends StatelessWidget {
  final Color backgroundColor;
  final Color iconColor;
  final bool added;
  final Function()? function;
  final String name;

  const ShopItem(
      {super.key, required this.backgroundColor, this.added = false, this.function, this.iconColor = Colors.red, this.name = 'SHOP_ITEM'});

  Widget shopItemButton(bool inCart) {
    if (inCart) {
      return RemoveFromCartButton(function: function,);
    } else {
      return AddToCartButton(function: function,);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 220,
        color: backgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 16,
            ),
            Container(
              width: 100,
              height: 100,
              color: iconColor,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(name),
            shopItemButton(added),
          ],
        ),
      ),
    );
  }
}




