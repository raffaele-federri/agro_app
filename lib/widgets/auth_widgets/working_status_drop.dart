import 'package:flutter/material.dart';

class DropdownFormFieldCT extends StatefulWidget {
  final List listItem;
  final String hint;
  String? valueChoose;

  DropdownFormFieldCT({super.key, required this.listItem, required this.hint});

  @override
  State<DropdownFormFieldCT> createState() => _DropdownFormFieldCTState();
}

class _DropdownFormFieldCTState extends State<DropdownFormFieldCT> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      focusColor: Colors.transparent,
      hint: Text(widget.hint,
          style: TextStyle(fontSize: 12, color: Colors.grey.shade400)),
      decoration: const InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 6),
        border: OutlineInputBorder(),
      ),
      borderRadius: BorderRadius.circular(4),
      isExpanded: true,
      value: widget.valueChoose,
      onChanged: (newValue) {
        setState(() {
          widget.valueChoose = newValue as String;
        });
      },
      items: widget.listItem.map((valueItem) {
        return DropdownMenuItem(
          value: valueItem,
          child: Text(valueItem),
        );
      }).toList(),
    );
  }
}