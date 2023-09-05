import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../skills_data.dart';
import 'skillsItemDesktop.dart';

class SkillsGridDesktop extends StatelessWidget {
  const SkillsGridDesktop
({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView(
        padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 20),
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 1 / 1,
          mainAxisExtent: 100,
          mainAxisSpacing: 10
        ),
        children: SKILLS
            .map(
              (item) => SkillsItemDesktop(
                item.title,
                item.url,
              ),
            )
            .toList(),
      ),
    );
  }
}
