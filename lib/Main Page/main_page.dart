import 'package:flutter/material.dart';
import '../Dashboard/dashboard.dart';
import '../Sekolah/Content/sekolah_new.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("Assets/home_background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BelinavButton(),
              SizedBox(height: 20),
              SakolaButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class SakolaButton extends StatelessWidget {
  const SakolaButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black,
          backgroundColor:
              const Color.fromARGB(255, 30, 213, 253), // Set the text color
          elevation: 8,
          shadowColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(50), // Adjust the radius as needed
          ),
          minimumSize: const Size(300, 70),
        ),
        // Login Button
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SekolahNew()),
          );
        },
        child: const Text(
          'Sekolah',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),
        ));
  }
}

class BelinavButton extends StatelessWidget {
  const BelinavButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black,
          backgroundColor:
              const Color.fromARGB(255, 30, 213, 253), // Set the text color
          elevation: 8,
          shadowColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(50), // Adjust the radius as needed
          ),
          minimumSize: const Size(300, 70),
        ),
        // Login Button
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const DB()),
          );
        },
        child: const Text(
          'Belinav',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),
        ));
  }
}
