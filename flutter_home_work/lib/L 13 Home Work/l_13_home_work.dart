import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF0A0E21), 
        appBar: AppBar(
          title: Text("BMI CALCULATOR"),
          backgroundColor: Color(0xFF0A0E21),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Color(0xFF1D1E33),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.male, size: 80, color: Colors.white),
                          Text("MALE", style: TextStyle(color: Colors.grey, fontSize: 18)),
                        ],
                      ),
                    ),
                  ),
                
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Color(0xFF1D1E33),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.female, size: 80, color: Colors.white),
                          Text("FEMALE", style: TextStyle(color: Colors.grey, fontSize: 18)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: Container(
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Color(0xFF1D1E33),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("HEIGHT", style: TextStyle(color: Colors.grey, fontSize: 18)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text("174", style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold)),
                        Text("cm", style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                   
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      height: 2,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Color(0xFF1D1E33),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("WEIGHT", style: TextStyle(color: Colors.grey)),
                          Text("60", style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                             
                              Container(
                                decoration: BoxDecoration(color: Color(0xFF4C4F5E), shape: BoxShape.circle),
                                child: Icon(Icons.remove, color: Colors.white, size: 40),
                              ),
                              SizedBox(width: 10),
                             
                              Container(
                                decoration: BoxDecoration(color: Color(0xFF4C4F5E), shape: BoxShape.circle),
                                child: Icon(Icons.add, color: Colors.white, size: 40),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Color(0xFF1D1E33),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("AGE", style: TextStyle(color: Colors.grey)),
                          Text("29", style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(color: Color(0xFF4C4F5E), shape: BoxShape.circle),
                                child: Icon(Icons.remove, color: Colors.white, size: 40),
                              ),
                              SizedBox(width: 10),
                              Container(
                                decoration: BoxDecoration(color: Color(0xFF4C4F5E), shape: BoxShape.circle),
                                child: Icon(Icons.add, color: Colors.white, size: 40),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: 80,
              child: Center(
                child: Text("CALCULATE", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}