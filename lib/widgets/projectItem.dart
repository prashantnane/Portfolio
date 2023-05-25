import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:typicons_flutter/typicons_flutter.dart';

class ProjectItem extends StatelessWidget {
  final String title;
  final String description;

  const ProjectItem(this.title, this.description, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(20),
      margin: EdgeInsets.symmetric(
        vertical: 10,
      ),
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.cyanAccent, borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 73, 109)),
                ),
              ),
              // SizedBox(
              //   width: 10,
              // ),
              IconButton(
                icon: Icon(
                  Typicons.link,
                  color: Color.fromARGB(255, 0, 73, 109),
                  size: 30,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Typicons.social_github_circular,
                  color: Color.fromARGB(255, 0, 73, 109),
                  size: 30,
                ),
                onPressed: () {},
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
              description,
              style: TextStyle(
                fontSize: 15,
                color: Color.fromARGB(255, 0, 73, 109),
              ),
            ),
          )
        ],
      ),
    );
  }
}
