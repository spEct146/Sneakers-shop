import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'About',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
            Image.asset(
              'assets/images/nikeLogo.png',
              color: Colors.black,
              height: 100,
            ),
            const SizedBox(height: 100),
            const Text(
              'About Nike',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              '"Just Do It." Our mission is what drives us to do everything possible to expand human potential. We do that by creating groundbreaking sport innovations, by making our products more sustainably, and by building a creative and diverse global team.',
              style: TextStyle(fontSize: 16, height: 1.5, letterSpacing: 0.5),
            ),
          ],
        ),
      ),
    );
  }
}
