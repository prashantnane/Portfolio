import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:typicons_flutter/typicons_flutter.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 73, 109),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 200),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello, this is",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.cyanAccent,
                    fontWeight: FontWeight.normal),
              ),
              Text("Prashant Nane.",
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
              Text(
                "A dexterous Video Editor",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton.icon(
                icon: Icon(
                  Icons.arrow_circle_right,
                  color: Color.fromARGB(255, 0, 73, 109),
                ),
                onPressed: () {},
                label: Text('Get in Touch',
                    style: TextStyle(color: Color.fromARGB(255, 0, 73, 109))),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyanAccent,
                  textStyle: TextStyle(
                    
                    fontSize: 15,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
