import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import './aboutmeDesktop.dart';
import './aboutmeMobile.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) {
        return const AboutMeMobile();
      },
      tablet: (context) {
        return const AboutMeMobile();
      },
      desktop: (context) {
        return const AboutMeDesktop();
      },
    );
  }
}