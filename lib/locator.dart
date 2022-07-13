import 'package:get_it/get_it.dart';
import 'package:zipper/modules/zip_code_view_model.dart';
import 'package:zipper/services/api_manager/api_manager.dart';
import 'package:zipper/services/local_storage/storage_service.dart';
import 'package:zipper/services/local_storage/storage_service_imp.dart';
import 'package:zipper/services/zip_code/zip_code_service.dart';
import 'package:zipper/services/zip_code/zip_code_service_imp.dart';
import 'package:zipper/widgets/zip_code/zip_code_search_view_model.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton<ZipCodeService>(() => ZipCodeServiceImp());
  locator.registerLazySingleton<StorageService>(() => StorageServiceImp());
  locator.registerLazySingleton<APIManager>(() => APIManager());

  locator.registerFactory<ZipCodeViewModel>(() => ZipCodeViewModel());
  locator.registerFactory<ZipCodeSearchViewModel>(() => ZipCodeSearchViewModel());
}
