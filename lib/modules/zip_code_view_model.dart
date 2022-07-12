import 'package:logger/logger.dart';
import 'package:zipper/locator.dart';
import 'package:zipper/models/data_models.dart';
import 'package:zipper/models/data_views.dart';
import 'package:zipper/services/local_storage/storage_service.dart';
import 'package:zipper/utils/base_view_model.dart';

class ZipCodeViewModel extends BaseViewModel {
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

  onSelectedViewChanged(SearchViewType searchViewType) {
    _searchViewType = searchViewType;
    notifyListeners();
  }
}
