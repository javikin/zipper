import 'package:flutter/material.dart';
import 'package:zipper/models/data_models.dart';
import 'package:zipper/theme/text_styles.dart';
import 'package:zipper/utils/base_view.dart';
import 'package:zipper/widgets/zip_code_search_view_model.dart';

class ZipCodeListWidget extends StatelessWidget {
  final Function(ZipCodeInformation zipCodeInformation) onZipCodeChanged;

  const ZipCodeListWidget({
    Key? key,
    required this.onZipCodeChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<ZipCodeSearchViewModel>(
      onModelReady: (model) => model.initializeListWidget(),
      builder: (context, model, child) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 12),
            child: Text('Search', style: Texts.h1),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: DropdownButton<String>(
                underline: Container(),
                hint: Text('Selecciona'),
                value: model.zipCode,
                onChanged: model.onZipCodeChange,
                items: model.zipCodes.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: OutlinedButton(
                onPressed: model.isSearchButtonEnable ? () => model.searchZipCodeTapped(onZipCodeChanged) : null,
                child: const Text('Search', style: Texts.button),
              ),
            ),
          )
        ],
      ),
    );
  }
}
