import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:susan0175/actions/status.dart';
import 'package:flutter/foundation.dart';
import 'package:redux/redux.dart';
import 'package:susan0175/main.dart';

int counterReducer(int state, dynamic action) {
  switch (action) {
    case Actions.Increment:
      return  state +1;
      break;
    case Actions.Decrement:
      return state ;
      break;
    default:
      return state;
  }
}
