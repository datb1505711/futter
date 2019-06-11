import 'package:demo_cart/models/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class CartDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text("Shopping Cart"),
      ),

      //create store connector, it show your cart.
      body: new StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, appState) {
          if (appState.cartItems.length == null ||
              appState.cartItems.length == 0) {
            return new Text("Giỏ hàng rỗng");
          } else {
            //create list Product
            return new ListView.builder(
              itemCount: appState.cartItems.length,
              itemBuilder: (context, position) {
                return new Card(
                  //custom view of product
                  child: new ListTile(
                    //name of product
                    title: new Text(
                      '${position+1} ${appState.cartItems[position].name}',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                );
              },
            );
          }
        },
      ),

      //button action pay your cart.
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: new Text('Pay'),
      ),
    );
  }
}
