import 'package:flutter/material.dart';

class GenderSelection extends StatefulWidget {
  @override
  _GenderSelectionState createState() => _GenderSelectionState();
}

class _GenderSelectionState extends State<GenderSelection> {
  String selectedGender = ''; // Selected gender

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                selectedGender = 'Male';
              });
            },
            child: Container(
              padding: EdgeInsets.all(10),
              color: selectedGender == 'Male' ? Colors.blue : Colors.grey,
              child: Text(
                'Male',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(width: 10),
          GestureDetector(
            onTap: () {
              setState(() {
                selectedGender = 'Female';
              });
            },
            child: Container(
              padding: EdgeInsets.all(10),
              color: selectedGender == 'Female' ? Colors.blue : Colors.grey,
              child: Text(
                'Female',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
