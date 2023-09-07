import 'package:belinav/Sekolah/Content/video.dart';
import 'package:flutter/material.dart';

import '../../empty.dart';

void main() {
  runApp(const SekolahNew());
}

class SekolahNew extends StatelessWidget {
  const SekolahNew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: const Text("SEKOLAH"),
        ),
        body: const SingleChildScrollView(
          child: SekolahNewContent(),
        ),
      ),
    );
  }
}

class SekolahNewContent extends StatelessWidget {
  const SekolahNewContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      height: screenHeight + 100,
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
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SekolahGame(),
              SekolahRead(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SekolahVideo(),
              SekolahMath(),
            ],
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

class SekolahGame extends StatelessWidget {
  const SekolahGame({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'Assets/login_background.jpg',
          width: 200,
          height: 120,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Empty("Game"),
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            elevation: 0,
            side: const BorderSide(
              color: Color.fromARGB(255, 191, 46, 124),
              width: 2.0,
            ),
          ),
          child: Text(
            "Game",
            style: const TextStyle(
              color: Color.fromARGB(255, 191, 46, 124),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

class SekolahRead extends StatelessWidget {
  const SekolahRead({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'Assets/login_background.jpg',
          width: 200,
          height: 120,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Empty("Read a book"),
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            elevation: 0,
            side: const BorderSide(
              color: Color.fromARGB(255, 191, 46, 124),
              width: 2.0,
            ),
          ),
          child: Text(
            "Read a book",
            style: const TextStyle(
              color: Color.fromARGB(255, 191, 46, 124),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

class SekolahVideo extends StatelessWidget {
  const SekolahVideo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'Assets/login_background.jpg',
          width: 200,
          height: 120,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const VideoNew(),
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            elevation: 0,
            side: const BorderSide(
              color: Color.fromARGB(255, 191, 46, 124),
              width: 2.0,
            ),
          ),
          child: Text(
            "Video",
            style: const TextStyle(
              color: Color.fromARGB(255, 191, 46, 124),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

class SekolahMath extends StatelessWidget {
  const SekolahMath({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'Assets/login_background.jpg',
          width: 200,
          height: 120,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Empty("Math is fun"),
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            elevation: 0,
            side: const BorderSide(
              color: Color.fromARGB(255, 191, 46, 124),
              width: 2.0,
            ),
          ),
          child: Text(
            "Math is fun",
            style: const TextStyle(
              color: Color.fromARGB(255, 191, 46, 124),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
