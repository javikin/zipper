import 'package:zipper/models/data_models.dart';

abstract class StorageService {
  Future<void> cacheZipCodeInformation(ZipCodeInformation zipCodeInformation);

  Future<ZipCodeInformation?> getZipCodeInformation();
}
