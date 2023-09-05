import 'package:flutter/material.dart';

class IntroDesktop extends StatelessWidget {
  const IntroDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      // height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.symmetric(horizontal: width / 30),
      child: Stack(children: [
        // const Positioned(
        //   right: 500,

        //   height: 200,
        //   width: 500,
        //   child: RiveAnimation.asset('octopus_loop.riv', animations: ['Blink', 'Idle'],),
        // ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 60, right: 60),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: width / 14,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            backgroundImage: const AssetImage('assets/profile.jpg'),
                            radius: width / 14 - 4,
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        
                      ],
                    ),
                  ),
                ),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hi! I am ",
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.normal),
                      ),
                      Text("Prashant Nane.",
                          style: TextStyle(
                              fontSize: 50,
                              color: Colors.cyanAccent,
                              fontWeight: FontWeight.bold)),
                      Text(
                        "A Software Engineer",
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
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
      ]),
    );
  }
}
