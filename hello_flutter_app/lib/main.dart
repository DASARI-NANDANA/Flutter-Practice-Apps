import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello Flutter App'),
        centerTitle: true,
        backgroundColor: Colors.red[600], // Simple background color from video #6
      ),
      body: Center(
        child: Text(
          'Name: D.Nandana\nCourse: ECE at CBIT',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Colors.grey[800], // Custom font styling from video #6
            letterSpacing: 1.5,
          ),
        ),
      ),
    );
  }
}