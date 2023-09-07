import 'package:flutter/material.dart';

import '../Dashboard/dashboard.dart';

void main() {
  runApp(const Setting());
}

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SettingContent(),
    );
  }
}

class SettingContent extends StatelessWidget {
  const SettingContent({Key? key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DB()),
                );
              },
            ),
            const SizedBox(width: 10),
            const Text(
              'Settings',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ],
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: AlignmentDirectional.bottomStart,
              end: AlignmentDirectional.topCenter,
              colors: [
                Colors.grey,
                Colors.grey.shade800,
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: screenWidth,
          height: screenHeight + 50,
          decoration: BoxDecoration(
            gradient: RadialGradient(
              colors: const [
                Colors.white,
                Color.fromARGB(255, 186, 205, 210),
              ],
              center: Alignment.center,
              radius: 1,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          ChangePasswordText(),
                          ChangePassword(),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          ChangeEmailText(),
                          ChangeEmail(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      ChangeThemeText(),
                      ChangeTheme(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChangePasswordText extends StatelessWidget {
  const ChangePasswordText({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 217, 217, 217),
      width: 300,
      height: 25,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          SizedBox(
            width: 15,
          ),
          Center(
            child: Text(
              "Change Password",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Icon(
            Icons.lock,
            size: 20,
            color: Colors.amber,
          ),
        ],
      ),
    );
  }
}

class ChangePassword extends StatelessWidget {
  const ChangePassword({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 130,
      color: Colors.white,
      padding: const EdgeInsets.all(10),
      child: const PasswordRow(),
    );
  }
}

class PasswordRow extends StatelessWidget {
  const PasswordRow({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        ColoredContainer(
          color: Color.fromARGB(255, 217, 217, 217),
          text: 'Current Password',
        ),
        SizedBox(height: 16.0),
        ColoredContainer(
          color: Color.fromARGB(255, 217, 217, 217),
          text: 'New Password',
        ),
        SizedBox(height: 16.0),
        ColoredContainer(
          color: Color.fromARGB(255, 217, 217, 217),
          text: 'Confirm Password',
        ),
      ],
    );
  }
}

class ChangeEmailText extends StatelessWidget {
  const ChangeEmailText({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 217, 217, 217),
      width: 300,
      height: 25,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          SizedBox(
            width: 15,
          ),
          Center(
            child: Text(
              "Change Email",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Icon(
            Icons.mail,
            size: 20,
            color: Colors.orange,
          ),
        ],
      ),
    );
  }
}

class ChangeEmail extends StatelessWidget {
  const ChangeEmail({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 130,
      color: Colors.white,
      padding: const EdgeInsets.all(10),
      child: const EmailRow(),
    );
  }
}

class EmailRow extends StatelessWidget {
  const EmailRow({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        ColoredContainer(
          color: Color.fromARGB(255, 217, 217, 217),
          text: 'Current Password',
        ),
        SizedBox(height: 16.0),
        ColoredContainer(
          color: Color.fromARGB(255, 217, 217, 217),
          text: 'New Email',
        ),
        SizedBox(height: 16.0),
        ColoredContainer(
          color: Color.fromARGB(255, 217, 217, 217),
          text: 'Confirm Email',
        ),
      ],
    );
  }
}

class ChangeThemeText extends StatelessWidget {
  const ChangeThemeText({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 217, 217, 217),
      width: 300,
      height: 30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          SizedBox(
            width: 15,
          ),
          Center(
            child: Text(
              "Change Theme",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Icon(
            Icons.palette,
            size: 20,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}

class ChangeTheme extends StatelessWidget {
  const ChangeTheme({Key? key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 100,
      child: call(),
    );
  }
}

class call extends StatelessWidget {
  const call({Key? key});

  @override
  Widget build(BuildContext context) {
    return ChangeThemePage();
  }
}

class ChangeThemePage extends StatelessWidget {
  final List<Color> colors = [
    Colors.blue,
    Colors.yellow,
    Colors.red,
    Colors.black,
    Colors.green,
  ];
  final List<String> colorNames = ['Blue', 'Yellow', 'Red', 'Black', 'Green'];

  ChangeThemePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 200.0,
      height: 200.0,
      child: Row(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: colors[0],
                      radius: 10.0,
                    ),
                    title: SizedBox(
                      width: 80.0,
                      child: Text(
                        colorNames[0],
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                    onTap: () {
                      // Implement your theme change logic here
                    },
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: colors[1],
                      radius: 10.0,
                    ),
                    title: SizedBox(
                      width: 80.0,
                      child: Text(
                        colorNames[1],
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                    onTap: () {
                      // Implement your theme change logic here
                    },
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: colors[2],
                      radius: 10.0,
                    ),
                    title: SizedBox(
                      width: 80.0,
                      child: Text(
                        colorNames[2],
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                    onTap: () {
                      // Implement your theme change logic here
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: colors[3],
                      radius: 10.0,
                    ),
                    title: SizedBox(
                      width: 80.0,
                      child: Text(
                        colorNames[3],
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                    onTap: () {
                      // Implement your theme change logic here
                    },
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: colors[4],
                      radius: 10.0,
                    ),
                    title: SizedBox(
                      width: 80.0,
                      child: Text(
                        colorNames[4],
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                    onTap: () {
                      // Implement your theme change logic here
                    },
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

class ColoredContainer extends StatelessWidget {
  final Color color;
  final String text;

  const ColoredContainer({
    Key? key,
    required this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 10.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          width: 150.0,
          height: 20.0,
          color: color,
          child: TextFormField(
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.all(10.0),
            ),
          ),
        ),
      ],
    );
  }
}
