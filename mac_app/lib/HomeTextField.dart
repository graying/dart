import 'package:flutter/material.dart';

class HomeTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField Examples'),
      ),
      body: TextField(
        decoration: InputDecoration(
          icon: Icon(Icons.calendar_today),
          labelText: "Date:",
          suffix: IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              FocusScope.of(context).requestFocus(FocusNode());
            },
          ),
          suffixIcon: Icon(Icons.delete_forever),
          helperText: 'Input date...',
          hintText: 'Please input date in here',

          ///focusedBorder: InputBorder.none,
          ///focusedBorder: UnderlineInputBorder(),
        ),

        ///Callback function
        onChanged: (text) {
          print('onChanged');
          print(text);
        },
      ),
    );
  }
}
