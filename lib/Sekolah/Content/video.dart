import 'package:flutter/material.dart';

import '../../empty.dart';

void main() {
  runApp(const VideoNew());
}

class VideoNew extends StatelessWidget {
  const VideoNew({Key? key}) : super(key: key);

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
          title: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "SEKOLAH",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.camera,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    "Video",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: const SingleChildScrollView(
          child: VideoNewContent(),
        ),
      ),
    );
  }
}

class VideoNewContent extends StatelessWidget {
  const VideoNewContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      height: screenHeight + 300,
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
              MyDearestFriend(),
              MyTeacherMyHero(),
              CountingNumbers(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AIUEO(),
              IndonesiaNature(),
              DearMom(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DontThrowTheTrash(),
              TraditionalMusicAngklung(),
              SolarSystem(),
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

// "My Dearest Friend",
// "My Teacher My Hero",
// "Counting Numbers",
// "AIUEO",
// "Indonesia's Nature",
// "Dear Mom",
// "Don't Throw Away The Trash",
// "Traditional Music Angklung",
// "Solar System",

class MyDearestFriend extends StatelessWidget {
  const MyDearestFriend({super.key});

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
                builder: (context) => const Empty("Video"),
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
            "My Dearest Friend",
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

class MyTeacherMyHero extends StatelessWidget {
  const MyTeacherMyHero({super.key});

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
                builder: (context) => const Empty("Video"),
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
            "My Teacher My Hero",
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

class CountingNumbers extends StatelessWidget {
  const CountingNumbers({super.key});

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
                builder: (context) => const Empty("Video"),
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
            "Counting Numbers",
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

class AIUEO extends StatelessWidget {
  const AIUEO({super.key});

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
                builder: (context) => const Empty("Video"),
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
            "AIUEO",
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

class IndonesiaNature extends StatelessWidget {
  const IndonesiaNature({super.key});

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
                builder: (context) => const Empty("Video"),
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
            "Indonesia's Nature",
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

class DearMom extends StatelessWidget {
  const DearMom({super.key});

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
                builder: (context) => const Empty("Video"),
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
            "Dear Mom",
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

class DontThrowTheTrash extends StatelessWidget {
  const DontThrowTheTrash({super.key});

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
                builder: (context) => const Empty("Video"),
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
            "Don't Throw The Trash",
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

class TraditionalMusicAngklung extends StatelessWidget {
  const TraditionalMusicAngklung({super.key});

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
                builder: (context) => const Empty("Video"),
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
            "Traditional Music Angklung",
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

class SolarSystem extends StatelessWidget {
  const SolarSystem({super.key});

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
                builder: (context) => const Empty("Video"),
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
            "SolarSystem",
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
