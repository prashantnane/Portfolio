import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../skills_data.dart';
import 'skillsItemMobile.dart';

class SkillsGridMobile extends StatelessWidget {
  const SkillsGridMobile

({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 80,
          childAspectRatio: 1 / 1,
          mainAxisExtent: 60,
          mainAxisSpacing: 10
        ),
        children: SKILLS
            .map(
              (item) => SkillsItemMobile(
                item.title,
                item.url,
              ),
            )
            .toList(),
      ),
    );
  }
}
