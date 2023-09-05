import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import './contactDesktop.dart';
import './contactMobile.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) {
        return const ContactMobile();
      },
      tablet: (context) {
        return const ContactMobile();
      },
      desktop: (context) {
        return const ContactDesktop();
      },
    );
  }
}