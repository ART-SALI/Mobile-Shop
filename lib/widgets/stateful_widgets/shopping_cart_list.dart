import 'package:flutter/material.dart';

class ShoppingCartList extends StatefulWidget {

  final List<Row> shoppingCartList;

  const ShoppingCartList({super.key, required this.shoppingCartList});

  @override
  State<ShoppingCartList> createState() => _ShoppingCartListState();
}

class _ShoppingCartListState extends State<ShoppingCartList> {



  List<Widget> shoppingCartListView(List<Row> cartList) {
    if (cartList.isEmpty) {
      return [const Text('Noting added yet')];
    } else {
      return cartList;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.orange.shade200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Flexible(
                fit: FlexFit.tight,
                child: Container(
                  height: 100,
                  padding: const EdgeInsets.only(top: 32),
                  color: Colors.white,
                  margin: EdgeInsets.zero,
                  child: const Text(
                    'Your shopping cart',
                    style: TextStyle(
                      fontSize: 32,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Flexible(
            child: ListView(
              padding: const EdgeInsets.only(top: 0),
              children: shoppingCartListView(widget.shoppingCartList),
            ),
          ),
        ],
      ),
    );
  }
}
