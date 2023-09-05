import 'package:flutter/material.dart';

import './projectItemMobile.dart';
import '../projects_data.dart';

class ProjectMobile extends StatelessWidget {
  const ProjectMobile({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Center(
      child: Column(
        children: [
          Text(
            "Projects",
            style: TextStyle(
                fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Container(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),

              itemCount: PROJECTS.length,
              itemBuilder: (context, index) {
                return ProjectItemMobile(
                    PROJECTS[index].title,
                    PROJECTS[index].description,
                    PROJECTS[index].skills,
                    PROJECTS[index].link,
                    PROJECTS[index].github);
              },
              // itemBuilder: PROJECTS
              //     .map(
              //       (proData) => ProjectItemMobile(
              //         proData.title,
              //         proData.description,
              //         proData.skills
              //       ),
              //     )
              //     .toList(),
            ),
          )
        ],
      ),
    );
  }
}
