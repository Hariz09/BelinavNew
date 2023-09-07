import 'package:belinav/Course/course_page_math.dart';
import 'package:belinav/Dashboard/profile.dart';
import 'package:belinav/Main%20Page/main_page.dart';
import 'package:belinav/Setting/setting_page.dart';
import 'package:belinav/empty.dart';
import 'package:flutter/material.dart';

import '../Course/course_page.dart';
import 'calendar.dart';

void main() {
  runApp(const DB());
}

class DB extends StatelessWidget {
  const DB({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 184, 0),
          title: Row(
            children: [
              Image.asset(
                'Assets/logo_belinav.png', // Replace with the path to your image
                width: 40, // Adjust the width as needed
                height: 40, // Adjust the height as needed
              ),
              SizedBox(
                width: 5,
              ),
              const Text(
                'Belinav',
              ),
            ],
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back), // Use the back arrow icon
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MainPage()),
              );
            },
          ),
        ),
        body: const DB_Content(),
      ),
    );
  }
}

class DB_Content extends StatelessWidget {
  const DB_Content({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth,
      height: screenHeight,
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
      child: const SingleChildScrollView(
        child: Wrap(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: 20,
                ),
                Flexible(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: DB_Name(),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      DB_Setting(),
                      SizedBox(
                        height: 15,
                      ),
                      DB_Teacher(),
                      SizedBox(
                        height: 1,
                      ),
                      DB_TeacherName()
                    ],
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                Flexible(
                  flex: 3,
                  child: Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    child: DB_TodayCourse(),
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                Flexible(
                  flex: 3,
                  child: Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: DB_Announcement(),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 20,
                ),
                Flexible(flex: 6, child: DB_Calendar()),
                SizedBox(
                  width: 20,
                ),
                Flexible(flex: 2, child: DB_Assignment()),
                // Flexible(flex: 2, child: DB_Gap()),
                SizedBox(
                  width: 20,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DB_Name extends StatelessWidget {
  const DB_Name({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Profile()),
        );
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.fromLTRB(10, 10, 18, 10),
        backgroundColor: const Color.fromARGB(255, 255, 184, 0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: const Row(
        children: [
          Icon(
            Icons.person,
            color: Color.fromARGB(255, 191, 46, 124),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            "M.Syavai \nTK A",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 191, 46, 124),
            ),
          )
        ],
      ),
    );
  }
}

class DB_Setting extends StatelessWidget {
  const DB_Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Setting()),
        );
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.fromLTRB(10, 10, 18, 10),
        backgroundColor: const Color.fromARGB(255, 191, 46, 124),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: const Row(
        children: [
          Icon(
            Icons.settings,
            color: Color.fromARGB(255, 255, 184, 0),
          ),
          SizedBox(width: 8), // Add some spacing between the icon and text
          Text(
            "Setting",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class DB_Teacher extends StatelessWidget {
  const DB_Teacher({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: const Color.fromARGB(255, 255, 184, 0),
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: const Row(
        children: [
          Text(
            "Class Teacher",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 191, 46, 124),
            ),
          )
        ],
      ),
    );
  }
}

class DB_TeacherName extends StatelessWidget {
  const DB_TeacherName({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Add your action here
        // For example, you can navigate to the teacher's profile or perform some other action.
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
        backgroundColor: const Color.fromARGB(255, 191, 46, 124),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: const Row(
        children: [
          Text(
            "Farel Zakwan",
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class DB_TodayCourse extends StatelessWidget {
  const DB_TodayCourse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      // width: 300,
      color: Colors.transparent,
      child: Column(
        children: [
          const Flexible(
            flex: 3,
            child: SizedBox.expand(
              child: DB_TDCTitle(),
            ),
          ),
          Flexible(
            flex: 2,
            child: SizedBox.expand(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CourseMath(title: "Math")),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 191, 46, 124),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text('Math'),
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: SizedBox.expand(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Course(title: "Reading")),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 191, 46, 124),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text('Reading'),
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: SizedBox.expand(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Course(title: "Drawing")),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 191, 46, 124),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text('Drawing'),
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: SizedBox.expand(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Course(title: "Writting")),
                  );
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color.fromARGB(255, 191, 46, 124),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text('Writing'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DB_TDCTitle extends StatelessWidget {
  const DB_TDCTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Empty("All Course")),
        );
      },
      style: ElevatedButton.styleFrom(
        primary: const Color.fromARGB(255, 255, 184, 0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.subject,
              color: const Color.fromARGB(255, 191, 46, 124),
            ),
            Text(
              "Today Course",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 191, 46, 124),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DB_Announcement extends StatelessWidget {
  const DB_Announcement({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      color: Colors.transparent,
      child: Column(
        children: [
          Flexible(
            flex: 2,
            child: Container(
              // width: 200,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 184, 0),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.announcement_rounded,
                      color: Color.fromARGB(255, 191, 46, 124),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Announcment",
                      style: TextStyle(
                        color: Color.fromARGB(255, 191, 46, 124),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Flexible(
            flex: 8,
            child: Container(
              // width: 200,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 191, 46, 124),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  DB_AnnouncmentFill(
                    title: "Ujian Membaca",
                    date: "10 September 2023",
                  ),
                  Divider(),
                  DB_AnnouncmentFill(
                    title: "Ujian Menulis",
                    date: "20 September 2023",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DB_AnnouncmentFill extends StatelessWidget {
  final String title;
  final String date;

  const DB_AnnouncmentFill({
    Key? key,
    required this.title,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            width: 10,
          ),
          const Pins(), // If you have a widget called Pins, include it here
          const SizedBox(
            width: 5,
          ),
          Text(
            title,
            textAlign: TextAlign.start,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 10,
            ),
          ),
          Flexible(
            flex: 2,
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                date,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 7,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 2,
          ),
        ],
      ),
    );
  }
}

class DB_Calendar extends StatelessWidget {
  const DB_Calendar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      // width: 400,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromARGB(255, 191, 46, 124),
          width: 5,
        ),
        color: Colors.transparent,
        // borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      child: const Calendar(),
    );
  }
}

class DB_Assignment extends StatelessWidget {
  const DB_Assignment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      // width: 300,
      color: Colors.transparent,
      child: Column(
        children: [
          const Flexible(
            flex: 3,
            child: SizedBox.expand(
              child: DB_ASMTitle(),
            ),
          ),
          Flexible(
            flex: 2,
            child: SizedBox.expand(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Empty("Math assignment")),
                  );
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color.fromARGB(255, 191, 46, 124),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text('Math'),
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: SizedBox.expand(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const Empty("Reading assignment")),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 191, 46, 124),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text('Reading'),
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: SizedBox.expand(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const Empty("Drawing assignment")),
                  );
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color.fromARGB(255, 191, 46, 124),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text('Drawing'),
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: SizedBox.expand(
              child: ElevatedButton(
                onPressed: () {
                  // Action for Writing button
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 191, 46, 124),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text(''),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DB_ASMTitle extends StatelessWidget {
  const DB_ASMTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 184, 0),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: const Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Assignment",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 191, 46, 124),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DB_Gap extends StatelessWidget {
  const DB_Gap({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.transparent,
    );
  }
}

class Pins extends StatelessWidget {
  const Pins({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: const Color.fromARGB(255, 255, 184, 0),
      child: const Icon(
        Icons.push_pin,
        color: const Color.fromARGB(255, 255, 184, 0),
      ),
    );
  }
}
