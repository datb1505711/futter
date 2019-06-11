import 'package:demo_cart/models/product.dart';

class AppState {

  //init empty State 
  static var empty = AppState(new List());

  final List<Product> cartItems;

  AppState(this.cartItems);
  //Convert to JSON data
  Map<String, dynamic> toJson() => {'cartItems': cartItems};
  
  @override
  String toString() => "$cartItems";
}
