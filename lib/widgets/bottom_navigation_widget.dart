import 'package:flutter/material.dart';
import 'package:zipper/models/data_views.dart';

class BottomNavigationWidget extends StatelessWidget {
  final Function(SearchViewType searchViewType) onSelectedViewChanged;
  const BottomNavigationWidget({
    Key? key,
    required this.onSelectedViewChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(
          onPressed: () => onSelectedViewChanged(SearchViewType.zipCode),
          child: const Text('Zip Code'),
        ),
        TextButton(
          onPressed: () => onSelectedViewChanged(SearchViewType.none),
          child: const Text('Home'),
        ),
        TextButton(
          onPressed: () => onSelectedViewChanged(SearchViewType.list),
          child: const Text('List'),
        ),
      ],
    );
  }
}
