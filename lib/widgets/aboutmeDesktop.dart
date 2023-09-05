import 'package:flutter/material.dart';

class AboutMeDesktop extends StatelessWidget {
  const AboutMeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width / 30),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "About Me",
            style: TextStyle(
                fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 25),
          Text(
            "I started my career into development as Android Developer. I am skilled in Flutter, which empowers me to create cross-platform applications. Currently I'm focusing on Web development and working projects on it.",
            textAlign: TextAlign.justify,
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          SizedBox(height: 15),
          Center(
            child: Text(
              "I have experience with these technologies.",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
