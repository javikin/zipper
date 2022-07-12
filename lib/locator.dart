import 'package:get_it/get_it.dart';
import 'package:zipper/services/local_storage/storage_service.dart';
import 'package:zipper/services/local_storage/storage_service_imp.dart';
import 'package:zipper/services/zip_code/zip_code_service.dart';
import 'package:zipper/services/zip_code/zip_code_service_imp.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton<ZipCodeService>(() => ZipCodeServiceImp());
  locator.registerLazySingleton<StorageService>(() => StorageServiceImp());
}
