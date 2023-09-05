import 'package:flutter/material.dart';

class Project {
  final String title;
  final String description;
  final List<String> skills;
  final String link;
  final String github;

  const Project({
    required this.title,
    required this.description,
    required this.skills,
    required this.link,
    required this.github,
  });
}
