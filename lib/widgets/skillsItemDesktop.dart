import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SkillsItemDesktop extends StatefulWidget {
  final String title;
  final String url;

  const SkillsItemDesktop(this.title, this.url, {super.key});

  @override
  State<SkillsItemDesktop> createState() => _SkillsItemDesktopState();
}

class _SkillsItemDesktopState extends State<SkillsItemDesktop> {
  bool isHover = false;
  
  @override
  Widget build(BuildContext context) {
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
        duration: const Duration(milliseconds: 200),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(widget.url),
              backgroundColor: Colors.white,
              radius: isHover ? 30 : 25,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Text(
                widget.title,
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
