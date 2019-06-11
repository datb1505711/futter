import 'package:demo_cart/screens/cart_detail/cart_detail.dart';
import 'package:flutter/material.dart';

import '../../../route.dart';

class CustomAppBar extends StatefulWidget {
  @override
  _MyCustomAppBar createState() => _MyCustomAppBar();
}

//this class use to custom appBar, left button, title, right button and action
class _MyCustomAppBar extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: IconButton(
        icon: Icon(
          Icons.shopping_cart,
        ),
        onPressed: () => pushCartDetailScreen(context),
      ),
    );
  }
}
