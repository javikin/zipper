import 'package:flutter/material.dart';
import 'package:zipper/models/data_views.dart';
import 'package:zipper/modules/zip_code_view_model.dart';
import 'package:zipper/utils/base_view.dart';
import 'package:zipper/widgets/bottom_navigation_widget.dart';
import 'package:zipper/widgets/city_information_widget.dart';
import 'package:zipper/widgets/zip_code/zip_code_list_widget.dart';
import 'package:zipper/widgets/zip_code/zip_code_search_widget.dart';

class ZipCodePage extends StatelessWidget {
  const ZipCodePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<ZipCodeViewModel>(
      onModelReady: (model) => model.initializePage(),
      builder: (context, model, child) => Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                model.searchViewType == SearchViewType.zipCode
                    ? ZipCodeSearchWidget(onZipCodeChanged: model.onZipCodeChanged)
                    : const SizedBox(),
                model.searchViewType == SearchViewType.list
                    ? ZipCodeListWidget(onZipCodeChanged: model.onZipCodeChanged)
                    : const SizedBox(),
                Expanded(
                  child: CityInformationWidget(zipCode: model.zipCode),
                ),
                BottomNavigationWidget(onSelectedViewChanged: model.onSelectedViewChanged)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
