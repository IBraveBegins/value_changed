import 'package:flutter/material.dart';
import 'package:value_changed/padding_extension.dart';

///ValueChangedWidget
class ValueChangedWidget extends StatelessWidget {
  final ValueChanged<String> onChanged;

  const ValueChangedWidget({super.key, required this.onChanged});

  get _listView => ListView.builder(
      padding: const EdgeInsets.only(left: 15, right: 15),
      itemCount: 20,
      itemBuilder: (_, index) => _itemWidget(index));

  _itemWidget(int index) {
    return InkWell(
      onTap: () => onChanged("item $index"),
      child: Column(
        children: [
          5.paddingHeight,
          Text(
            "item $index",
            style: const TextStyle(fontSize: 16),
          ),
          5.paddingHeight,
          const Divider(height: 0.5)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(child: _listView);
  }
}
