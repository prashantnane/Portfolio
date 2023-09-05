import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          Divider(
            color: Colors.white,
          ),
          SizedBox(
            height: 15,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Created with ',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Icon(
                CupertinoIcons.heart_fill,
                color: Colors.red,
              ),
              Text(
                ' by Prashant',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
