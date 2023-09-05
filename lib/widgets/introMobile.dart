import 'package:flutter/material.dart';

class IntroMobile extends StatelessWidget {
  const IntroMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
        // height: MediaQuery.of(context).size.height,
        child: Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 64,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage("assets/profile.jpg"),
              ),
            ),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Hi! I am ",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: 5,
            ),
            Text("Prashant Nane.",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.cyanAccent,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 5,
            ),
            Text(
              "A Software Engineer",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            // ElevatedButton.icon(
            //     icon: Icon(
            //       Icons.arrow_circle_right,
            //       color: Color.fromARGB(255, 0, 73, 109),
            //     ),
            //     onPressed: () =>
            //         Scrollable.ensureVisible(dataKey.currentContext!),
            //     label: Text('Get in Touch',
            //         style: TextStyle(color: Color.fromARGB(255, 0, 73, 109))),
            //     style: ElevatedButton.styleFrom(
            //       backgroundColor: Colors.cyanAccent,
            //       textStyle: TextStyle(
            //         fontSize: 15,
            //       ),
            //     ),
            //   ),
            
            
          ],
        ),
      ],
    ));
  }
}
