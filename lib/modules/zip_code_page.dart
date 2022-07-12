import 'package:flutter/material.dart';
import 'package:zipper/models/data_views.dart';
import 'package:zipper/modules/zip_code_view_model.dart';
import 'package:zipper/utils/base_view.dart';
import 'package:zipper/widgets/bottom_navigation_widget.dart';
import 'package:zipper/widgets/zip_code_search_widget.dart';

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
                Expanded(
                  child: Card(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('City Information'),
                            Text('${model.zipCode?.country}'),
                            Text('${model.zipCode?.code}'),
                            Text('${model.zipCode?.places}'),
                          ],
                        ),
                      ),
                    ),
                  ),
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
