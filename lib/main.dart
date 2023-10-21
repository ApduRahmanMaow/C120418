import 'package:flutter/material.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  Application({Key? key}) : super(key: key);

  final List<String> imageList = [
    "images/cheese.jpeg",
    "images/vegetable.jpeg",
    "images/chicken.jpeg"
  ];

  final List<String> textList = [
    "Cheese Pizza",
    "Vegetable  Pizza",
    "Chicken Pizza"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                margin: EdgeInsets.all(10.0),
                color: Colors.deepOrangeAccent,
                child: Row(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image.asset(
                        imageList[index],
                        width: 100.0,
                        height: 100.0,
                      ),
                    ),
                    SizedBox(width: 20.0),
                    Text(
                      textList[index],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 30.0,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
