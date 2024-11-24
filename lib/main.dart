import 'package:flutter/material.dart';

void main() {
  runApp(const CoachApp());
}

class CoachApp extends StatelessWidget {
  const CoachApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            'Top Coaches',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildImage("assets/jürgen klopp.jpg", "Jürgen Klopp"),
                const SizedBox(width: 10),
                buildImage("assets/Pep Guardiola.jpg", "Pep Guardiola"),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildImage("assets/Carlo Ancelotti.jpg", "Carlo Ancelotti"),
                const SizedBox(width: 10),
                buildImage("assets/Hansi Flick1.jpg", "Hansi Flick"),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildImage("assets/Jose Mourinho.jpg", "Jose Mourinho"),
                const SizedBox(width: 10),
                buildImage("assets/Luis Enrique.jpg", "Luis Enrique"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildImage(String imagePath, String coachName) {
    return Stack(
      alignment: Alignment.bottomCenter, // النص يكون في الأسفل
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          width: 180,
          height: 250,
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.black.withOpacity(0.6), // خلفية شفافة
          ),
          child: Text(
            coachName,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              // fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
