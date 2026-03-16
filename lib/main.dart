import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("My first app"), centerTitle: true),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 10,
          verticalDirection: VerticalDirection.down,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              color: Colors.blue,
              height: 200,
              child: Image.asset(
                "assets/image.png",
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              color: Colors.red,
              child: Text(
                "What image is that?",
                textAlign: TextAlign.center, 
                style: TextStyle(fontSize: 16)),
            ),
            Container(
              padding: EdgeInsets.all(10),
              color: Colors.yellow,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 20,
                children: [
                  Column(children: [Icon(Icons.fastfood), Text("Food")]),
                  Column(children: [Icon(Icons.landscape), Text("Scenery")]),
                  Column(children: [Icon(Icons.people), Text("People")]),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
