import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:prashant_nane_portfolio/widgets/skillsGridDesktop.dart';
import 'package:prashant_nane_portfolio/widgets/skillsGridMobile.dart';

import './projectDesktop.dart';
import './projectMobile.dart';

class Skill extends StatelessWidget {
  const Skill({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) {
        return const SkillsGridMobile();
      },
      tablet: (context) {
        return const SkillsGridMobile();
      },
      desktop: (context) {
        return const SkillsGridDesktop();
      },
    );
  }
}