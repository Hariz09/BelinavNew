import 'package:flutter/material.dart';

import '../../empty.dart';

void main() {
  runApp(const Video());
}

class Video extends StatelessWidget {
  const Video({Key? key}) : super(key: key);

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
          child: VideoContent(),
        ),
      ),
    );
  }
}

class VideoContent extends StatelessWidget {
  const VideoContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    final List<String> imagePaths = [
      'Assets/login_background.jpg',
      'Assets/login_Background.jpg',
      'Assets/login_Background.jpg',
      'Assets/login_Background.jpg',
      'Assets/login_Background.jpg',
      'Assets/login_Background.jpg',
      'Assets/login_Background.jpg',
      'Assets/login_Background.jpg',
      'Assets/login_Background.jpg',
    ];

    List<String> buttonTexts = [
      "My Dearest Friend",
      "My Teacher My Hero",
      "Counting numbers",
      "AIUEO",
      "Indonesia's Nature",
      "Dear Mom",
      "Don't Throw Away The Trash",
      "Traditional Music Angklung",
      "Solar System",
    ];

    // Calculate the number of rows based on the number of images and desired number of images per row.
    int imagesPerRow = 3;
    int numRows = (imagePaths.length / imagesPerRow).ceil();

    return Container(
      height: screenHeight + 200,
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
      child: Align(
        alignment: Alignment.center,
        child: Center(
          child: Column(
            children: List.generate(numRows, (rowIndex) {
              int startIndex = rowIndex * imagesPerRow;
              int endIndex = (rowIndex + 1) * imagesPerRow;
              endIndex =
                  endIndex > imagePaths.length ? imagePaths.length : endIndex;

              List<Widget> rowImages =
                  List.generate(endIndex - startIndex, (index) {
                int imageIndex = startIndex + index;

                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Image.asset(
                      imagePaths[
                          imageIndex], // Use the corresponding image path
                      width: 200,
                      height: 120,
                      fit: BoxFit.cover, // Adjust the fit as needed
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
                          color:
                              Color.fromARGB(255, 191, 46, 124), // Border color
                          width: 2.0, // Border width
                        ),
                      ),
                      child: Text(
                        buttonTexts[imageIndex],
                        style: const TextStyle(
                          color: Color.fromARGB(255, 191, 46, 124),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                );
              });

              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: rowImages,
              );
            }),
          ),
        ),
      ),
    );
  }
}
