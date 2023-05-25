import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:video_editor_porfolio/dummy_data.dart';
import 'package:video_editor_porfolio/widgets/projectItem.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 73, 109),
        appBar: AppBar(
          title: Text('Some Things I\'ve Built'),
        ),
        body: ListView(
          padding: const EdgeInsets.all(25),
          children: DUMMY_PROJECTS
              .map(
                (proData) => ProjectItem(
                  proData.title,
                  proData.description,
                ),
              )
              .toList(),
        ));
  }
}
