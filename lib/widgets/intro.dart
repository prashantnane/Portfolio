import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import './introDesktop.dart';
import './introMobile.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) {
        return const IntroMobile();
      },
      tablet: (context) {
        return const IntroMobile();
      },
      desktop: (context) {
        return const IntroDesktop();
      },
    );
  }
}