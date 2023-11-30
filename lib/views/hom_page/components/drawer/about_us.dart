import 'package:flutter/material.dart';

void main() {
  runApp(About());
}


class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xfd2e3148),
        title: Text('About Us'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Add your about us content here, such as text and images

            Text(
              'About Our Sign Language App',
              style: Theme.of(context).textTheme.headline5,

              textAlign: TextAlign.center,
            ),

            SizedBox(height: 20),

            Text(
              '''Our Sign Language app provides an immersive learning experience, covering the basics of finger-spelling  the alphabet and numbers.Learn the intricacies of finger  signs for each letter in the alphabet through interactive lessons.Explore the world of numbers with clear finger  signs from 0 to 9, engaging users in counting exercises  
          Import personalized images into the app for a unique learning experience, allowing users to practice finger signs associated with specific objects or expressions.Immerse yourself in an interactive learning journey, where each lesson is designed to enhance your finger-signing skills.Our innovative text-to-sign detection feature enables users to input text, and the app dynamically generates corresponding finger signs, aiding in practical communication.''',
              style: TextStyle(
                  fontSize: 20
              ),
              textAlign: TextAlign.start,
            ),

            SizedBox(height: 20),

            // Add images, additional text, or any other content

          ],
        ),
      ),
    );
  }
}