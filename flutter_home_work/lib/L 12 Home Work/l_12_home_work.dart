import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: [
            Container(
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hello! 👋", style: TextStyle(color: Colors.white, fontSize: 22)),
                  Text("Try your best to build this ui", style: TextStyle(color: Colors.white)),
                  SizedBox(height: 15),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text("Get Started", style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text("Quick Stats", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),

            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
              children: [
              
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Icon(Icons.person, color: Colors.purple),
                      Text("1,234"),
                      Text("Users", style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ),
              
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Icon(Icons.star, color: Colors.orange),
                      Text("4.8"),
                      Text("Rating", style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Icon(Icons.bolt, color: Colors.purple),
                    SizedBox(width: 10),
                    Text("Fast Performance"),
                    Spacer(), 
                    Icon(Icons.arrow_forward_ios, size: 15, color: Colors.grey),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}