import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:logger/logger.dart';
import 'package:zipper/services/api_manager/exception.dart';

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

  Future<T> safeCall<T>(ValueGetter<Future<T>> call) async {
    try {
      setState(ViewState.busy);
      T result = await call();
      setState(ViewState.idle);
      return result;
    } catch (e, stacktrace) {
      manageError(e, stacktrace);
      rethrow;
    }
  }

  void manageError(e, stacktrace) {
    if (kDebugMode) {
      print('Error $e,');
      print('Stacktrace: $stacktrace');
    }
    logger.d('Error ${e.data}');
    if (e is APIException) {
      Fluttertoast.showToast(
        msg: e.toString(),
        toastLength: Toast.LENGTH_LONG,
      );
    }
    setState(ViewState.idle);
  }
}
