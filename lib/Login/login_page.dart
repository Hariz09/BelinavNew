import 'package:belinav/Main%20Page/main_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("Assets/login_background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            width: 300,
            height: 200,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 139, 103, 199),
              borderRadius:
                  BorderRadius.circular(16), // Make the container a squircle
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 250,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 210, 189, 227),
                    borderRadius: BorderRadius.circular(
                        16), // Make the container a squircle
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(
                        Icons.person,
                        color: Color.fromARGB(255, 248, 223, 2),
                        size: 25,
                      ),
                      hintText: 'What do people call you?',
                      labelText: 'Name',
                    ),
                    onSaved: (String? value) {
                      // This optional block of code can be used to run
                      // code when the user saves the form.
                    },
                    validator: (String? value) {
                      return (value != null && value.contains('@'))
                          ? 'Do not use the @ char.'
                          : null;
                    },
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: 250,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 210, 189, 227),
                    borderRadius: BorderRadius.circular(
                        16), // Make the container a squircle
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(
                        Icons.lock,
                        color: Color.fromARGB(255, 248, 223, 2),
                        size: 25,
                      ),
                      hintText: 'What do people call you?',
                      labelText: 'Password',
                    ),
                    onSaved: (String? value) {
                      // This optional block of code can be used to run
                      // code when the user saves the form.
                    },
                    validator: (String? value) {
                      return (value != null && value.contains('@'))
                          ? 'Do not use the @ char.'
                          : null;
                    },
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: const Color.fromARGB(
                        255, 143, 229, 130), // Set the text color
                    elevation: 8,
                    shadowColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          16), // Adjust the radius as needed
                    ),
                    minimumSize: const Size(150, 48),
                  ),
                  // Login Button
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MainPage()),
                    );
                  },
                  child: const Text('Sign In'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
