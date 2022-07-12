import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:zipper/models/data_models.dart';
import 'package:zipper/services/local_storage/storage_service.dart';

class StorageServiceImp implements StorageService {
  static const sharedPrefZipCodeInformation = 'zipCodeInformation';

  @override
  Future<void> cacheZipCodeInformation(ZipCodeInformation zipCodeInformation) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(sharedPrefZipCodeInformation, jsonEncode(zipCodeInformation));
  }

  @override
  Future<ZipCodeInformation?> getZipCodeInformation() async {
    final prefs = await SharedPreferences.getInstance();
    final json = prefs.getString(sharedPrefZipCodeInformation);
    return json != null ? ZipCodeInformation.fromJson(jsonDecode(json)) : null;
  }
}
