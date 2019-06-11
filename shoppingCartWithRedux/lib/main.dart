import 'package:demo_cart/redux/actions/action.dart';
import 'package:demo_cart/route.dart';
import 'package:demo_cart/screens/cart_detail/cart_detail.dart';
import 'package:demo_cart/screens/catalog/catalog.dart';
import 'package:demo_cart/shopping_list.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import './redux/reducers/reducer.dart';
import 'models/Product.dart';
import 'models/app_state.dart';
import 'screens/catalog/widget/custom_appbar.dart';

void main() {
  runApp(new MyApp());
}

