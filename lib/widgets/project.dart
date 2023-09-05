import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import './projectDesktop.dart';
import './projectMobile.dart';

class Project extends StatelessWidget {
  const Project({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) {
        return const ProjectMobile();
      },
      tablet: (context) {
        return const ProjectMobile();
      },
      desktop: (context) {
        return const ProjectDesktop();
      },
    );
  }
}