// import 'package:fl_country_code_picker/fl_country_code_picker.dart';
// import 'package:flutter/material.dart';
//
// class Test extends StatefulWidget {
//   const Test({super.key});
//
//   @override
//   State<Test> createState() => _TestState();
// }
//
// class _TestState extends State<Test> {
//   final countryPicker = const FlCountryCodePicker();
//   late CountryCode selectedCode =
//   const CountryCode(name: 'Uzbekistan', code: 'UZ', dialCode: '+998');
//
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:   InkWell(
//         onTap: () async {
//           final code = await countryPicker.showPicker(
//               context: context);
//           if (code != null) {
//             setState(() {
//               selectedCode = code;
//             });
//             print('=======> CT CODE  ${code.dialCode}');
//           }
//         },
//         child: const Icon(Icons.arrow_drop_down),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//
//   final myFocusNode = FocusNode();
//
//   @override
//   void dispose() {
//     myFocusNode.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Change color on focus"),
//       ),
//       body: Builder(
//         builder: (BuildContext context) {
//           bool hasFocus = myFocusNode.hasFocus;
//           print('$hasFocus , ${myFocusNode.hasFocus}');
//           return SafeArea(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                   color: hasFocus ? Colors.red : Colors.white,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       TextFormField(
//                         focusNode: myFocusNode,
//                       ),
//                       SizedBox(height: 20),
//                       Text("This will change color on focus"),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final myFocusNode = FocusNode();
  bool _hasFocus = false;

  @override
  void initState() {
    super.initState();
    myFocusNode.addListener(() {
      setState(() {
        _hasFocus = myFocusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    myFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Change color on focus"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(focusNode: myFocusNode,),
            SizedBox(height: 20),
            Container(
              color: _hasFocus ? Colors.blue : Colors.white,
              child: Text("This will change color on focus"),
            )
          ],
        ),
      ),
    );
  }
}