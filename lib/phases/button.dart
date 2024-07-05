import 'package:flutter/material.dart';
class Button extends StatefulWidget {
  const Button({super.key});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          showDialog(
            barrierDismissible: true,
            context: context,
            builder: (_) => Container(
              width: 500,
              height: 400,
              color: Color.fromARGB(255, 0, 251, 34),
              child: Text(
                'Good',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.purple,
                    fontWeight: FontWeight.w600),
              ),
            ),
          );
        },
        child: Text('Press Me'),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
          textStyle: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Raised Button Example'),
//         ),
//         body: Center(
//           child: ElevatedButton(
//             onPressed: () {
//               // Define the action when the button is pressed
//               print('Button pressed!');
//             },
//             child: Text('Press Me'),
//             style: ElevatedButton.styleFrom(
//               padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
//               textStyle: TextStyle(fontSize: 16),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
