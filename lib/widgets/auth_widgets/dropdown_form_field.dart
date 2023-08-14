import 'package:flutter/material.dart';

class AddressDropdownView extends StatelessWidget {
  final List<AddressInfo> data;
  final String hint;
  final ValueNotifier<int> selectedId;

  const AddressDropdownView({
    super.key,
    required this.data,
    required this.hint,
    required this.selectedId,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      focusColor: Colors.transparent,
      hint: Text(hint,
          style: TextStyle(fontSize: 12, color: Colors.grey.shade400)),
      decoration: const InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 6),
        border: OutlineInputBorder(),
      ),
      borderRadius: BorderRadius.circular(4),
      isExpanded: true,
      value: selectedId.value,
      onChanged: (newId) {
        if (newId != null) {
          selectedId.value = newId;
        }
      },
      items: data.map((d) {
        return DropdownMenuItem(
          value: d.id,
          child: Text(d.name),
        );
      }).toList(),
    );
  }
}

class AddressInfo {
  final int id;
  final String name;

  AddressInfo({required this.id, required this.name});
}
