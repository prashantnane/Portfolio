import 'package:flutter/material.dart';

class AboutMeMobile extends StatelessWidget {
  const AboutMeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
              "About Me",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "I started my career into development as Android Developer. I am skilled in Flutter, which empowers me to create cross-platform applications. Currently I'm focusing on Web development. And working projects on it.",
              textAlign: TextAlign.justify,
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                "I have experience with these technologies.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
      ],
    );
  }
}
