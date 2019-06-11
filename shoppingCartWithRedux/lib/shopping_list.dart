import 'package:demo_cart/redux/actions/action.dart';
import 'package:demo_cart/route.dart';
import 'package:demo_cart/screens/cart_detail/cart_detail.dart';
import 'package:demo_cart/screens/catalog/catalog.dart';
import 'package:demo_cart/screens/pay./pay.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import './redux/reducers/reducer.dart';
import 'models/app_state.dart';
import 'screens/catalog/widget/custom_appbar.dart';

class MyApp extends StatelessWidget {
  final store =
      new Store<AppState>(appStateReducers, initialState: AppState.empty);

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: new MaterialApp(
        debugShowCheckedModeBanner: false,

        //add Routes for app
        routes: <String, WidgetBuilder>{
          //routes to Catalog Screen
          Route_URL.catalog: (context) => Catalog(store),

          //route to Cart Detail Screen
          Route_URL.cart: (context) => CartDetail(),

          Route_URL.pay: (context) => ShowCart(),
        },
        title: 'Online Shopping',
        home: StoreBuilder<AppState>(
          onInit: (store) => store.dispatch(ActionEmpty()),
          builder: (context, store) {
            return new Scaffold(
              appBar: AppBar(
                title: Row(
                  children: <Widget>[
                    new Icon(Icons.settings),
                    new Padding(
                      padding: EdgeInsets.only(left: 16.0),
                    ),
                    new Text('Catalog'),
                  ],
                ),
                actions: <Widget>[
                  //custom leading icon and trailling icon for AppBar
                  CustomAppBar(),
                ],
              ),
              body: Catalog(store),

              //bottom button
              bottomSheet: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: new RaisedButton(
                  child: new Text('Thanh Toán'),
                  onPressed: () {
                    pushPayScreen(context);
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
