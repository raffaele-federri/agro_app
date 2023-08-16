// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// import '../../bloc/cubit/sign_up/sign_up_cubit.dart';
//
// class DropdownFormFieldCT extends StatefulWidget {
//   final List<StatusInfo> data;
//   final String hint;
//   String? valueChoose;
//   final ValueNotifier<int> selectedId;
//   final Function(int)? onChanged;
//
//   DropdownFormFieldCT({super.key,  required this.hint, required this.data, required this.selectedId, this.onChanged});
//
//   @override
//   State<DropdownFormFieldCT> createState() => _DropdownFormFieldCTState();
// }
//
// class _DropdownFormFieldCTState extends State<DropdownFormFieldCT> {
//   @override
//   Widget build(BuildContext context) {
//     return DropdownButtonFormField(
//       focusColor: Colors.transparent,
//       hint: Text(
//         widget.hint,
//         style: TextStyle(fontSize: 12, color: Colors.grey.shade400),
//       ),
//       decoration: const InputDecoration(
//         contentPadding: EdgeInsets.symmetric(horizontal: 6),
//         border: OutlineInputBorder(),
//       ),
//       borderRadius: BorderRadius.circular(4),
//       isExpanded: true,
//       value: widget.valueChoose,
//       onChanged:(newId) {
//         if (newId != null) {
//
//           widget.selectedId.value = newId;
//           widget.onChanged?.call(newId);
//         }
//       },
//       items: widget.data.map((d) {
//         return DropdownMenuItem(
//           value: d.id,
//           child: Text(d.name),
//         );
//       }).toList(),
//     );
//   }
// }

// class StatusInfo {
//   final int id;
//   final String name;
//
//   StatusInfo({required this.id, required this.name});
// }

import 'package:flutter/material.dart';

class DropdownFormFieldCT extends StatelessWidget {
  final List<StatusInfo> data;
  final String hint;
  final ValueNotifier<int> selectedId;
  final Function(int)? onChanged;

  const DropdownFormFieldCT({
    super.key,
    required this.data,
    required this.hint,
    required this.selectedId,
    this.onChanged,
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
          onChanged?.call(newId);
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

class StatusInfo {
  final int id;
  final String name;

  StatusInfo({required this.id, required this.name});
}
