import 'package:demo_cart/models/app_state.dart';
import 'package:demo_cart/models/product.dart';
import 'package:demo_cart/redux/actions/action.dart';

//Init State
AppState appStateReducers(AppState state, dynamic action) {

if (action is ActionsAddItem) {
  print(action);
  return addItem(state.cartItems, action);
}
return state;
}

AppState addItem(List<Product> items, ActionsAddItem action) {
  return AppState(List.from(items)..add(action.item));
}

AppState toggleItemState(List<Product> items, ActionToggleItemState action) {
  return AppState(items
      .map((item) => item.name == action.item.name ? action.item : item)
      .toList());
}

// //add item
// List<Product> cartState(List<Product> previousState, dynamic action) {
//   List<Product> newState = reducerCart(action.item, action);
//   return newState;
// }

// // //function MyCart never used in app.
// // List<Product> MyCart(List<Product> items, dynamic action) {

// //   if (action == ActionsAddItems) {
// //     return addItem(items, action);
// //   }
// //   return items;
// // }

// // Shopping cart reducer
// List<Product> reducerCart(List<Product> prevState, dynamic action) {
//   List<Product> newState = []..addAll(prevState);
//   //add item actions
//   if (action == ActionsAddItem) {
//     newState..add(action.item);
//     return newState;
//   }

//   // if (action == ActionsRemoveItem) {
//   //   //create position variable to find item in myCart[] and remove it
//   //   int position;

//   //   for (int i = 0; i < myCart.length; i++) {
//   //     if (myCart[i] == item) {
//   //       position = i;
//   //       break;
//   //     }
//   //     myCart.removeAt(position);
//   //   }
//   // return myCart;
//   // }
// }
