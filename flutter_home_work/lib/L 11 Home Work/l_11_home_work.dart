import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Getlmage_jpeg(),
      ),
    ),
  );
}

class Getlmage_jpeg extends StatelessWidget {
  const Getlmage_jpeg({super.key});


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Container(color: Colors.green, margin: EdgeInsets.all(5)),
              ),
             
              Expanded(
                child: Container(color: Colors.orange, margin: EdgeInsets.all(5)),
              ),
            ],
          ),
        ),

        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Container(color: Colors.purple[100], margin: EdgeInsets.all(5)),
              ),
              Expanded(
                child: Column(
                  children: [
                    Expanded(child: Container(color: Colors.purple[300], margin: EdgeInsets.all(5))),
                    Expanded(child: Container(color: Colors.purple[600], margin: EdgeInsets.all(5))),
                  ],
                ),
              ),
              Expanded(
                child: Container(color: Colors.purple[100], margin: EdgeInsets.all(5)),
              ),
            ],
          ),
        ),

        Expanded(
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(color: Colors.blue[100], margin: EdgeInsets.all(5)),
              ),
              Expanded(
                flex: 2,
                child: Container(color: Colors.blue[300], margin: EdgeInsets.all(5)),
              ),
            ],
          ),
        ),

        Container(
          height: 100,
          color: Colors.grey,
          margin: EdgeInsets.all(5),
          width: double.infinity,
        ),
      ],
    );
  }
}