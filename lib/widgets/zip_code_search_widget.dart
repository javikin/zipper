import 'package:flutter/material.dart';
import 'package:zipper/models/data_models.dart';
import 'package:zipper/models/data_views.dart';
import 'package:zipper/utils/base_view.dart';
import 'package:zipper/widgets/zip_code_search_view_model.dart';

class ZipCodeSearchWidget extends StatelessWidget {
  final SearchViewType mode;
  final Function(ZipCodeInformation zipCodeInformation) onZipCodeChanged;

  const ZipCodeSearchWidget({
    Key? key,
    required this.mode,
    required this.onZipCodeChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<ZipCodeSearchViewModel>(
      onModelReady: (model) => model.initializeWidget(),
      builder: (context, model, child) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Search'),
          const Text('Country:'),
          Autocomplete<CountryView>(
            optionsBuilder: (TextEditingValue textEditingValue) => model.searchCountries(textEditingValue.text),
            onSelected: (CountryView selection) => model.onCountryViewSelected(selection),
            displayStringForOption: (CountryView option) => option.name,
            optionsViewBuilder: (
              BuildContext context,
              AutocompleteOnSelected<CountryView> onSelected,
              Iterable<CountryView> options,
            ) =>
                _CountryListOptions(onSelected: onSelected, options: options),
          ),
          const Text('Zip Code:'),
          TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Zip code',
            ),
            onChanged: model.onZipCodeChange,
          ),
          TextButton(
            onPressed: () => model.searchZipCodeTapped(onZipCodeChanged),
            child: const Text('Search'),
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
        child: Container(
          color: Colors.grey,
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
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
