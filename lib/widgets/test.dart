// import 'package:flutter/material.dart';
//
// class Test extends StatefulWidget {
//   Test({super.key});
//
//   @override
//   State<Test> createState() => _TestState();
// }
//
// class _TestState extends State<Test> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           const SizedBox(height: 200),
//           TextFormField(
//             decoration: const InputDecoration(
//               prefix: Row(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Icon(Icons.confirmation_num_sharp),
//                   Text('Some Text Here'),
//                 ],
//               ),
//             ),
//           ),
//
//         ],
//       ),
//     );
//   }
// }
import 'dart:math';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
@RoutePage()
class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final TextEditingController _controller = TextEditingController();
  final ValueNotifier<bool> _isVisible = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: TextFormField(
            controller: _controller,
            obscureText: !_isVisible.value,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              prefixIcon: const Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.phone),
                  SizedBox(width: 8.0),
                  Text(
                    '+998 ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
              suffixIcon: ValueListenableBuilder<bool>(
                valueListenable: _isVisible,
                builder: (context, isVisible, child) {
                  return IconButton(
                    icon: isVisible ? const Icon(Icons.visibility) : Icon(Icons.visibility_off),
                    onPressed: () {
                      _isVisible.value = !_isVisible.value;
                    },
                  );
                },
              ),
              hintText: 'Enter your phone number',
            ),
            keyboardType: TextInputType.phone,
            style: TextStyle(
              fontSize: 16.0,
              height: 1.5,
            ),
          ),
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';
//
// class MyHomePage extends StatefulWidget {
//      MyHomePage({super.key});
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

// WORKS WHEN UPDATE
// import 'package:flutter/material.dart';
//
// class MyHomePage extends StatefulWidget {
//      MyHomePage({super.key});
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//
//   final myFocusNode = FocusNode();
//   bool _hasFocus = false;
//
//   @override
//   void initState() {
//     super.initState();
//     myFocusNode.addListener(() {
//       setState(() {
//         _hasFocus = myFocusNode.hasFocus;
//       });
//     });
//   }
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
//       body: Padding(
//         padding:    EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             TextFormField(focusNode: myFocusNode,),
//             SizedBox(height: 20),
//             Container(
//               color: _hasFocus ? Colors.blue : Colors.white,
//               child: Text("This will change color on focus"),
//             ),
//             ElevatedButton(onPressed: (){
//               myFocusNode.unfocus();
//             }, child: Text('UNFOCUS'))
//           ],
//         ),
//       ),
//     );
//   }
// }
