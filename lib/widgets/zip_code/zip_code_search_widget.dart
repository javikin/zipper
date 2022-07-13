import 'package:flutter/material.dart';
import 'package:zipper/models/data_models.dart';
import 'package:zipper/models/data_views.dart';
import 'package:zipper/theme/text_styles.dart';
import 'package:zipper/utils/base_view.dart';
import 'package:zipper/widgets/zip_code/zip_code_search_view_model.dart';

class ZipCodeSearchWidget extends StatelessWidget {
  final Function(ZipCodeInformation zipCodeInformation) onZipCodeChanged;

  const ZipCodeSearchWidget({
    Key? key,
    required this.onZipCodeChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<ZipCodeSearchViewModel>(
      onModelReady: (model) => model.initializeSearchWidget(),
      builder: (context, model, child) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 12),
            child: Text('Search', style: Texts.h1),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Autocomplete<CountryView>(
              optionsBuilder: (TextEditingValue textEditingValue) => model.searchCountries(textEditingValue.text),
              onSelected: (CountryView selection) => model.onCountryViewSelected(selection),
              fieldViewBuilder: (
                BuildContext context,
                TextEditingController fieldTextEditingController,
                FocusNode fieldFocusNode,
                VoidCallback onFieldSubmitted,
              ) {
                return TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: 'Country',
                  ),
                  controller: fieldTextEditingController,
                  focusNode: fieldFocusNode,
                  style: Texts.p1,
                );
              },
              displayStringForOption: (CountryView option) => option.name,
              optionsViewBuilder: (
                BuildContext context,
                AutocompleteOnSelected<CountryView> onSelected,
                Iterable<CountryView> options,
              ) =>
                  _CountryListOptions(onSelected: onSelected, options: options),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: TextFormField(
              style: Texts.p1,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                hintText: 'Zip Code',
              ),
              keyboardType: TextInputType.number,
              onChanged: model.onZipCodeChange,
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

class _CountryListOptions extends StatelessWidget {
  final AutocompleteOnSelected<CountryView> onSelected;
  final Iterable<CountryView> options;

  const _CountryListOptions({
    Key? key,
    required this.onSelected,
    required this.options,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Material(
        child: ListView.builder(
          padding: const EdgeInsets.all(2),
          itemCount: options.length,
          itemBuilder: (BuildContext context, int index) {
            final CountryView option = options.elementAt(index);
            return GestureDetector(
              onTap: () => onSelected(option),
              child: _CountryOption(country: option),
            );
          },
        ),
      ),
    );
  }
}

class _CountryOption extends StatelessWidget {
  final CountryView country;
  const _CountryOption({Key? key, required this.country}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        '${country.flag}  ${country.name}',
        style: Texts.p1,
      ),
    );
  }
}
