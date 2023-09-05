import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:social_media_flutter/social_media_flutter.dart';
import 'dart:html' as html;

class ProjectItemDesktop extends StatefulWidget {
  final String title;
  final String description;
  final List<String> skills;
  final link;
  final github;

  const ProjectItemDesktop(
      this.title, this.description, this.skills, this.link, this.github,
      {super.key});

  @override
  State<ProjectItemDesktop> createState() => _ProjectItemDesktopState();
}

class _ProjectItemDesktopState extends State<ProjectItemDesktop> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return MouseRegion(
      onEnter: (f) {
        setState(() {
          isHover = true;
        });
      },
      onExit: (f) {
        setState(() {
          isHover = false;
        });
      },
      child: AnimatedContainer(
        margin: const EdgeInsets.symmetric(
          vertical: 15,
        ),
        duration: const Duration(milliseconds: 200),
        height: 150,
        width: width / 2.4,
        decoration: BoxDecoration(
          boxShadow: [
            isHover
                ? const BoxShadow(
                    color: Color.fromARGB(255, 0, 140, 255),
                    blurRadius: 10.0,
                    spreadRadius: 2.0,
                  )
                : const BoxShadow(
                    color: Color.fromARGB(255, 255, 255, 255),
                    offset: Offset(
                      5.0,
                      5.0,
                    ),
                    blurRadius: 5.0,
                    spreadRadius: 2.0,
                  ),
          ],
          color: Colors.cyan,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  widget.link == ''
                      ? SizedBox()
                      : IconButton(
                          icon: const Icon(
                            CupertinoIcons.link,
                            color: Color.fromARGB(255, 0, 73, 109),
                            size: 25,
                          ),
                          onPressed: () =>
                              html.window.open(widget.link, '_blank'),
                        ),
                  socialIcon(widget.github, SocialIconsFlutter.github),
                  const SizedBox(
                    width: 5,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                widget.title,
                style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 73, 109)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                widget.description,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 0, 73, 109),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: widget.skills.length,
                    itemBuilder: (context, index) {
                      return Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            widget.skills[index],
                            style: const TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 0, 73, 109),
                                fontFamily: 'Raleway',
                                fontStyle: FontStyle.italic),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      );
                      // return ListTile(
                      //   title: Expanded(
                      //       child: Text("${skills[index]}")),
                      // );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget socialIcon(String link, IconData iconPath) {
    return InkWell(
      onTap: () => html.window.open(link, '_blank'),
      child: SocialWidget(
        placeholderText: '',
        iconSize: 25,
        iconData: iconPath,
        iconColor: Color.fromARGB(255, 0, 73, 109),
        link: link,
      ),
    );
  }
}
