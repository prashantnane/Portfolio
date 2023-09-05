import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SkillsItemMobile extends StatelessWidget {
  final String title;
  final String url;

  const SkillsItemMobile(this.title, this.url, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(url),
            backgroundColor: Colors.white,
            radius: 15,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 10,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
