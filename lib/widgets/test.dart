import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  final TextEditingController _textEditingController = TextEditingController();
  late CountryCode _selectedCode;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextFormField(
            controller: _textEditingController,
            decoration: InputDecoration(
              labelText: 'Phone Number',
              hintText: 'Enter your phone number',
              prefixIcon: CountryCodePicker(
                onChanged: (code) {
                  setState(() {
                    _selectedCode = code;
                  });
                },
                initialSelection: 'US',
                favorite: ['+1'],
                showCountryOnly: false,
                showOnlyCountryWhenClosed: false,
                alignLeft: false,
              ),
            ),
            keyboardType: TextInputType.phone,
          ),
        ),
      ),
    );
  }
}
