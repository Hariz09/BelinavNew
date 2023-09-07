import 'package:flutter/material.dart';

void main() {
  runApp(const Profile());
}

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 191, 46, 124),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: const Text("Profile"),
        ),
        body: const SingleChildScrollView(
          child: ProfileContent(),
        ),
      ),
    );
  }
}

class ProfileContent extends StatelessWidget {
  const ProfileContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      height: screenHeight,
      width: screenWidth,
      decoration: const BoxDecoration(
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
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: CircleAvatar(
                radius: 50, // Adjust the size as needed
                backgroundImage: AssetImage("Assets/avatar.png"),
                backgroundColor:
                    Colors.transparent, // Replace with your image asset
              ),
            ),
            Container(
              width: 300,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 191, 46, 124),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Table(
                border: TableBorder.all(
                  color: const Color.fromARGB(255, 255, 184, 0),
                  width: 3.0,
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                ),
                children: [
                  _buildTableRow("Name:", "M.Syavai"),
                  _buildTableRow("Age:", "6"),
                  _buildTableRow("Gender:", "Male"),
                  _buildTableRow("Class:", "TK A"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  TableRow _buildTableRow(String label, String value) {
    return TableRow(
      children: [
        TableCell(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        TableCell(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              value,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 10,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
