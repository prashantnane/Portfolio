import 'package:flutter/material.dart';

import 'projectItemDesktop.dart';
import '../projects_data.dart';

class ProjectDesktop extends StatelessWidget {
  const ProjectDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width / 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Projects",
            style: TextStyle(
                fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Container(
            child: GridView(
              padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 500,
                childAspectRatio: 2 / 2,
                crossAxisSpacing: 30,
                mainAxisSpacing: 20,
              ),
              children: PROJECTS
                  .map(
                    (proData) => ProjectItemDesktop(
                      proData.title,
                      proData.description,
                      proData.skills,
                      proData.link,
                      proData.github,
                    ),
                  )
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
