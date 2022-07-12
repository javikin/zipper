import 'package:flutter/material.dart';
import 'package:zipper/models/data_views.dart';
import 'package:zipper/theme/text_styles.dart';

class CityInformationWidget extends StatelessWidget {
  final ZipCodeView zipCode;

  const CityInformationWidget({
    Key? key,
    required this.zipCode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Last City Information',
                style: Texts.h1,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Text(
                  'Zip code: ${zipCode.code}',
                  style: Texts.p1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Text(
                  zipCode.country,
                  style: Texts.p1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text(
                  'Places: ${zipCode.places}',
                  style: Texts.p2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
