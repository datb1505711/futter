import 'package:demo_cart/models/app_state.dart';
import 'package:demo_cart/models/list_item.dart';
import 'package:demo_cart/models/product.dart';
import 'package:demo_cart/redux/actions/action.dart';
import 'package:demo_cart/screens/pay/pay.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:demo_cart/models/app_state.dart';

//Catalog screen (main Screen)
class Catalog extends StatelessWidget {
  final Store<AppState> store;
  Catalog(this.store);

  @override
  Widget build(BuildContext context) {
    //create list Product
    return new ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, position) {
        return new Card(
          //custom view of product
          child: new ListTile(
            //name of product
            title: new Text(
              '${items[position].name}',
              style: TextStyle(fontSize: 20.0),
            ),

            //create icon add item to shopping cart and validate it
            trailing: new StoreConnector<AppState, VoidCallback>(
              converter: (store) {
                return () => StoreProvider.of<AppState>(context)
                    .dispatch(new ActionsAddItem(items[position]));
              },
              builder: (context, callback) {
                return new IconButton(
                  onPressed: () => StoreProvider.of<AppState>(context)
                      .dispatch(ActionsAddItem(items[position])),
                  icon: Icon(Icons.add_shopping_cart),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
