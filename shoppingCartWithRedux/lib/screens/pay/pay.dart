import 'package:demo_cart/models/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class ShowCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: new Text("Shopping Cart"),
        ),

        //in the body, it show all product you add to cart int Catalog screen
        //two case, if your cart is empty, show "Giỏ hàng rỗng"
        //if your cart have some product, show your product list.
        body: new StoreConnector<AppState, AppState>(
          converter: (store) => store.state,
          builder: (context, state) {
            if (state.cartItems.length == null || state.cartItems.length == 0) {
              return Column(
                children: <Widget>[
                  new Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: new Text(
                      'Giỏ hàng rỗng.',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  new Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: new FlatButton(
                      onPressed: () {Navigator.of(context).pop();},
                      child: Text('Quay lại mua sắm'),
                    ),
                  )
                ],
              );
            } else {
              return ListView.builder(
                itemCount: state.cartItems.length,
                itemBuilder: (context, position) {
                  return new Card(
                    child: ListTile(
                      title: Text('${state.cartItems[position]}'),
                    ),
                  );
                },
              );
            }
          },
        ));
  }
}
