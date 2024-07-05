import 'package:flutter/material.dart';


class My extends StatelessWidget {
  My(this._nameController, this._numberController);
  
  final TextEditingController _nameController ;
  final TextEditingController _numberController;

  void _showToast1(BuildContext context, {required String data}) {
    // Create a SnackBar
    final snackBar = SnackBar(
      content: Text('This is a Snackbar: $_nameController !'),
      // action: SnackBarAction(
      //   label: 'Undo',
      //   onPressed: () {
      //     // Some code to undo the change.
      //   },
      // ),
    );

    // Use the ScaffoldMessenger to show the SnackBar
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
          onTap: () {
            _showToast1(context, data: 'Stark');
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Text(
              'Subscribe',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
          ),
    );
  }
}
