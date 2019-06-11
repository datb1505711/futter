import 'package:flutter/material.dart';

class Route_URL {
  static const String _PREFIX = "/";
  // static const String home_url = _PREFIX + "home";
  static const String catalog = _PREFIX + "catalog";
  static const String cart = _PREFIX + "catalog/cart_detail";
  static const String pay = _PREFIX + "catalog/pay";
}

//push to catalogScreen
void pushCatalogScreen(BuildContext context) {
  Navigator.of(context).pushNamed("/catalog");
}

//push to Cart Detail Screen
void pushCartDetailScreen(BuildContext context) {
  Navigator.of(context).pushNamed("/catalog/cart_detail");
}

//push to Pay Screen
void pushPayScreen(BuildContext context) {
  Navigator.of(context).pushNamed("/catalog/pay");
}