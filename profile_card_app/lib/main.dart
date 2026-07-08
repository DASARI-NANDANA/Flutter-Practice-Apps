import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        appBar: AppBar(
          title: const Text('My Profile Card'),
          backgroundColor: Colors.blueGrey[800],
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(25.0),
            margin: const EdgeInsets.symmetric(horizontal: 25.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Circular Profile Image using Container & DecorationImage
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.teal, width: 2.0),
                    image: const DecorationImage(
                      // Referencing your image asset file here
                      image: AssetImage('assets/1000002871.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 15.0),

                // Name Text
                const Text(
                  'D. Nandana',
                  style: TextStyle(
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                    letterSpacing: 1.1,
                  ),
                ),
                const SizedBox(height: 5.0),

                // Title Text
                Text(
                  'STUDENT AT CBIT',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[600],
                    letterSpacing: 1.5,
                  ),
                ),
                const SizedBox(height: 20.0),

                // Divider Line
                Container(
                  height: 1.0,
                  color: Colors.grey[300],
                  margin: const EdgeInsets.symmetric(horizontal: 30.0),
                ),
                const SizedBox(height: 20.0),

                // Email Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.email, color: Colors.teal, size: 20),
                    const SizedBox(width: 12.0),
                    Text(
                      'nandana.dasari1@gmail.com',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.grey[800],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12.0),

                // Location Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.location_on, color: Colors.teal, size: 20),
                    const SizedBox(width: 12.0),
                    Text(
                      'Telangana, India',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.grey[800],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}