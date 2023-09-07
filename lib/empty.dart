import 'package:flutter/material.dart';

void main() {
  runApp(Empty("Course"));
}

class Empty extends StatelessWidget {
  final String title;

  const Empty(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: Text("Sakola Belia"),
        ),
        body: SingleChildScrollView(
          child: EmptyContent(title: title),
        ),
      ),
    );
  }
}

class EmptyContent extends StatelessWidget {
  final String title;

  const EmptyContent({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      height: screenHeight,
      width: screenWidth,
      decoration: BoxDecoration(
        gradient: RadialGradient(
          colors: [
            Colors.white,
            Colors.lightBlue,
          ],
          center: Alignment.center,
          radius: 1, // Adjust the radius as needed
        ),
      ),
      child: Center(
        child: Container(
          height: 100,
          width: 300,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.amber,
              width: 5,
            ),
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: const Color.fromARGB(255, 191, 46, 124),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "$title content goes here",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
