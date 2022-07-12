import 'package:flutter/widgets.dart';
import 'package:logger/logger.dart';
import 'package:zipper/locator.dart';
import 'package:zipper/models/data_models.dart';
import 'package:zipper/models/data_views.dart';
import 'package:zipper/services/local_storage/storage_service.dart';

class ZipCodeViewModel extends ChangeNotifier {
  final _logger = Logger();
  final _storageService = locator<StorageService>();

  ZipCodeView? _zipCode;
  SearchViewType _searchViewType = SearchViewType.none;

  ZipCodeView? get zipCode => _zipCode;
  SearchViewType get searchViewType => _searchViewType;

  initializePage() async {
    final zipCodeInformation = await _storageService.getZipCodeInformation();
    if (zipCodeInformation != null) {
      _logger.d(zipCodeInformation);
      _zipCode = ZipCodeView.fromZipCodeInformation(zipCodeInformation);
      notifyListeners();
    }
  }

  onZipCodeChanged(ZipCodeInformation zipCodeInformation) async {
    await _storageService.cacheZipCodeInformation(zipCodeInformation);
    _zipCode = ZipCodeView.fromZipCodeInformation(zipCodeInformation);
    notifyListeners();
  }

  onHomeViewTapped() {
    _searchViewType = SearchViewType.none;
    notifyListeners();
  }

  onZipCodeViewTapped() {
    _searchViewType = SearchViewType.zipCode;
    notifyListeners();
  }

  onListViewTapped() {
    _searchViewType = SearchViewType.list;
    notifyListeners();
  }
}

enum SearchViewType { zipCode, list, none }
