import 'package:flutter/material.dart';
import 'package:project_5/widgets/stateless_widgets/shop_item.dart';

class ShopItemList extends StatefulWidget {
  final List<Row> shoppingCartList;
  const ShopItemList({
    super.key,
    required this.shoppingCartList,
  });

  @override
  State<ShopItemList> createState() => _ShopItemListState();
}

class _ShopItemListState extends State<ShopItemList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          children: [
            ShopItem(
              name: 'SOMETHING',
              iconColor: Colors.indigo,
              backgroundColor: Colors.yellow.shade50,
              function: () {
                addingShopItemToCart(color: Colors.indigo, name: 'SOMETHING');
                setState(() {
                  widget.shoppingCartList;
                });
              },
            ),
            ShopItem(
              iconColor: Colors.limeAccent,
              backgroundColor: Colors.green.shade50,
              function: () {
                addingShopItemToCart(color: Colors.limeAccent);
                setState(() {
                  widget.shoppingCartList;
                });
              },
            ),
          ],
        ),
        Row(
          children: [
            ShopItem(
              name: 'LOL_ITEM',
              iconColor: Colors.black45,
              backgroundColor: Colors.green.shade50,
              function: () {
                addingShopItemToCart(color: Colors.black45, name: 'LOL_ITEM');
                setState(() {
                  widget.shoppingCartList;
                });
              },
            ),
            ShopItem(
              iconColor: Colors.teal,
              backgroundColor: Colors.yellow.shade50,
              function: () {
                addingShopItemToCart(color: Colors.teal);
                setState(() {
                  widget.shoppingCartList;
                });
              },
            ),
          ],
        ),
      ],
    );
  }

  void addingShopItemToCart({required Color color, String name = 'SHOP_ITEM'}) {
    return widget.shoppingCartList.add(
      Row(
        children: [
          ShopItem(
            name: name,
            iconColor: color,
            backgroundColor: backgroundColor(),
            added: true,
            function: () {
              widget.shoppingCartList
                  .removeAt(widget.shoppingCartList.length - 1);
            },
          ),
        ],
      ),
    );
  }

  dynamic backgroundColor() {
    if (widget.shoppingCartList.length % 2 == 1) {
      return Colors.yellow.shade50;
    } else {
      return Colors.green.shade50;
    }
  }
}
