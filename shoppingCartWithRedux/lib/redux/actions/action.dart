import 'package:demo_cart/models/product.dart';
import 'package:flutter/material.dart';

//action add product to cart
class ActionsAddItem  {
  final Product item;

  ActionsAddItem(this.item);
}

//action remove product from cart
class ActionsRemoveItem {
  final int id;

  ActionsRemoveItem(this.id);
}

//action state of product when state of product is changed 
class ActionToggleItemState {
  final Product item;
  ActionToggleItemState(this.item);
}

//empty action, use to init State in app.
class ActionEmpty {}