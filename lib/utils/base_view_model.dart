import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

enum ViewState { idle, busy }

abstract class BaseViewModel extends ChangeNotifier {
  final logger = Logger();

  ViewState _state = ViewState.idle;
  ViewState get state => _state;
  bool get isBusy => state == ViewState.busy;
  bool get isIdle => state == ViewState.idle;

  void setState(ViewState viewState) {
    _state = viewState;
    notifyListeners();
  }
}
