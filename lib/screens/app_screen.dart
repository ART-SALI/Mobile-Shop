import 'package:flutter/material.dart';
import 'package:project_5/widgets/stateful_widgets/shopping_cart_list.dart';
import 'package:project_5/widgets/stateless_widgets/shop_item.dart';
import 'package:project_5/widgets/stateful_widgets/shop_item_list.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({super.key});

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {

  List<Row> shoppingCartList = [
    // Row(
    //   children: [
    //     ShopItem(
    //       backgroundColor: Colors.yellow.shade50,
    //       added: true,
    //       function: (){},
    //     ),
    //   ],
    // ),
    // Row(
    //   children: [
    //     ShopItem(
    //       backgroundColor: Colors.green.shade50,
    //       added: true,
    //     ),
    //   ],
    // ),
    // Row(
    //   children: [
    //     ShopItem(
    //       backgroundColor: Colors.yellow.shade50,
    //       added: true,
    //     ),
    //   ],
    // ),
    // Row(
    //   children: [
    //     ShopItem(
    //       backgroundColor: Colors.green.shade50,
    //       added: true,
    //     ),
    //   ],
    // ),
  ];

  void removeShopItem(){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orange,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          )
      ),
      body: ShopItemList(shoppingCartList: shoppingCartList),
      drawer: ShoppingCartList(shoppingCartList: shoppingCartList,),
    );
  }
}






