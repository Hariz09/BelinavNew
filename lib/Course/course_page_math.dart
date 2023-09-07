import 'package:flutter/material.dart';

import '../Dashboard/dashboard.dart';

class CourseMath extends StatelessWidget {
  final String title;

  const CourseMath({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
          leading: const Padding(
            padding: EdgeInsets.only(left: 12.0),
            child: Icon(
              Icons.book,
              color: Colors.white,
            ),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              width: screenWidth,
              height: 500, // Adjust the width as needed
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
              child: Column(
                children: [
                  // Course Bar
                  Flexible(
                    flex: 1,
//                         fit: FlexFit.tight,
                    child: Container(
                      width: double.infinity,
                      height: kToolbarHeight,
                      color: const Color.fromARGB(255, 255, 184, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Flexible(
                            flex: 1,
                            child: ElevatedButton(
                              onPressed: () {
                                // Handle Stream button tap
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 255, 184, 0),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    child: const Icon(
                                      Icons.question_answer,
                                      color: Color.fromARGB(255, 191, 46, 124),
                                    ),
                                  ),
                                  const SizedBox(width: 8.0),
                                  const Flexible(
                                    child: Text(
                                      'Stream',
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: ElevatedButton(
                              onPressed: () {
                                // Handle Syllabus button tap
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 255, 184, 0),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    child: const Icon(
                                      Icons.library_books,
                                      color: Color.fromARGB(255, 191, 46, 124),
                                    ),
                                  ),
                                  const SizedBox(width: 8.0),
                                  const Flexible(
                                    child: Text(
                                      'Syllabus',
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: ElevatedButton(
                              onPressed: () {
                                // Handle Assessment button tap
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 255, 184, 0),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    child: const Icon(
                                      Icons.assessment,
                                      color: Color.fromARGB(255, 191, 46, 124),
                                    ),
                                  ),
                                  const SizedBox(width: 8.0),
                                  const Flexible(
                                    child: Text(
                                      'Assessment',
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: ElevatedButton(
                              onPressed: () {
                                // Handle Attendance button tap
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 255, 184, 0),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    child: const Icon(
                                      Icons.event,
                                      color: Color.fromARGB(255, 191, 46, 124),
                                    ),
                                  ),
                                  const SizedBox(width: 8.0),
                                  const Flexible(
                                    child: Text(
                                      'Attendance',
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const DB()),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 255, 184, 0),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    child: const Icon(
                                      Icons.home,
                                      color: Color.fromARGB(255, 191, 46, 124),
                                    ),
                                  ),
                                  const SizedBox(width: 8.0),
                                  const Flexible(
                                    child: Text(
                                      'Dashboard',
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: UpcommingBox(),
                      ), //Flexible
                      SizedBox(
                        width: 20,
                      ),
                      Flexible(
                        flex: 3,
                        fit: FlexFit.tight,
                        child: AssessmenTColumn(),
                      ),
                      SizedBox(
                        width: 20,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class UpcommingBox extends StatelessWidget {
  const UpcommingBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 184, 0),
        borderRadius: BorderRadius.circular(20),
      ),
      width: 200,
      height: 100,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                'Upcoming',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Divider(),
          SizedBox(height: 8),
          Text(
            'Upcoming events',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}

class AssessmenTColumn extends StatelessWidget {
  const AssessmenTColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      height: 250,
      width: 500,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Flexible(flex: 1, child: AssessmentsTitle()),
          Flexible(flex: 3, child: AssessmentsBody()),
          Flexible(flex: 1, child: AssessmentsEnd()),
        ],
      ),
    );
  }
}

class AssessmentsTitle extends StatelessWidget {
  const AssessmentsTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 191, 46, 124),
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
          bottom: Radius.circular(0),
        ),
      ),
      child: Stack(
        children: [
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.task,
                    color: Color.fromARGB(255, 255, 184, 0),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Tugas Penambahan',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            top: 20,
            right: 10,
            bottom: 20,
            child: Container(
              width: 80,
              decoration: BoxDecoration(
                color: const Color.fromARGB(
                    255, 255, 184, 0), // Set the background color
                borderRadius:
                    BorderRadius.circular(10), // Adjust the radius as needed
              ),
              alignment: Alignment.center,
              child: const Text(
                'Assessment',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 8,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AssessmentsEnd extends StatelessWidget {
  const AssessmentsEnd({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 191, 46, 124),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: const Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.comment,
                    color: Color.fromARGB(255, 255, 184, 0),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Comment',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class AssessmentsBody extends StatelessWidget {
  const AssessmentsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 150,
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage("Assets/Task.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
