import 'package:flutter/widgets.dart';
import 'package:logger/logger.dart';
import 'package:zipper/locator.dart';
import 'package:zipper/models/data_models.dart';
import 'package:zipper/models/data_views.dart';
import 'package:zipper/services/zip_code/zip_code_service.dart';

class ZipCodeViewModel extends ChangeNotifier {
  final _logger = Logger();
  final _zipCodeService = locator<ZipCodeService>();

  ZipCodeView? _zipCode;

  initializePage() async {}

  onZipCodeChanged(ZipCodeInformation code) {}

  onZipCodeViewTapped() {}

  onListViewTapped() {}

  onHomeViewTapped() {}
}
