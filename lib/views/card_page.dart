import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  final eventText;
  CardScreen(this.eventText);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(eventText.title),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}
