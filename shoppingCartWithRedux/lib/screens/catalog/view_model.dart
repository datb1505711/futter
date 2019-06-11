// import 'package:demo_cart/models/Products.dart';
// import 'package:demo_cart/redux/actions/action.dart';
// import 'package:demo_cart/redux/reducers/reducer.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_redux/flutter_redux.dart';
// import 'package:demo_cart/models/list_items.dart';
// import 'package:redux/redux.dart';

// class ViewModel {
//   final List<Product> pictures;
//   final Function(Product) onAddPicture;
//   final Function(Product) onRemovePicture;
//   final Function(Product) onUpdatePicture;

//   ViewModel(
//       {this.pictures,
//       this.onAddPicture,
//       this.onRemovePicture,
//       this.onUpdatePicture});

//   factory ViewModel.create(Store<List<Product>> store) {
//     _onAddPicture(Product picture) {
//       store.dispatch(ActionsAddItem);
//     }

//     // _onRemovePicture(Product picture) {
//     //   store.dispatch(AddPicture(picture));
//     // }

//     // _onUpdatePicture(Picture picture) {
//     //   store.dispatch(AddPicture(picture));
//     // }

//     return ViewModel(
//       pictures: store.state,
//       onAddPicture: _onAddPicture,
//       // onRemovePicture: _onRemovePicture,
//       // onUpdatePicture: _onUpdatePicture,
//     );
//   }
// }