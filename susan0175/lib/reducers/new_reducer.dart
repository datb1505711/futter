import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:susan0175/actions/new_actions.dart';
import 'package:flutter/foundation.dart';
import 'package:redux/redux.dart';

String newReducer(String state, dynamic action) {
  switch (action) {
    case NewActions.Action1:
      return "Action 1";
      break;
    case NewActions.Action2:
      return "Action 2";
      break;
    case NewActions.Action3:
      return "Action 3";
      break;
    default:
      return "       ";
  }
}
