import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:social_media_flutter/social_media_flutter.dart';
import 'dart:html' as html;

import '../widgets/aboutme.dart';
import '../widgets/footer.dart';
import '../widgets/project.dart';
import '../widgets/skill.dart';
import '../widgets/contact.dart';
import '../widgets/intro.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final dataKey = GlobalKey();

  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 0, 73, 109),
      body: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color.fromARGB(255, 19, 0, 50),
              Color.fromARGB(255, 35, 78, 148)
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            tileMode: TileMode.clamp,
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Intro(),
              const SizedBox(
                height: 10,
              ),
              ScreenTypeLayout.builder(
                mobile: (context) {
                  return Center(
                    // margin: EdgeInsets.symmetric(horizontal: 40),
                    child: MouseRegion(
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
                        duration: Duration(milliseconds: 200),
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: ElevatedButton.icon(
                            icon: const Icon(
                              Icons.touch_app,
                              size: 15,
                              color: Color.fromARGB(255, 0, 73, 109),
                            ),
                            onPressed: () => Scrollable.ensureVisible(
                              dataKey.currentContext!,
                              alignment: 1.0,
                              // alignmentPolicy: ScrollPositionAlignmentPolicy.explicit,
                              duration: const Duration(
                                  seconds:
                                      1), // Obviously, these could be variables too.
                              curve: Curves.decelerate,
                            ),
                            label: const Text('Get in Touch',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 0, 73, 109))),
                            style: ElevatedButton.styleFrom(
                              elevation: 10,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              shadowColor: Colors.black,
                              backgroundColor: Colors.cyanAccent,
                              textStyle: const TextStyle(
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
                tablet: (context) {
                  return Center(
                    // margin: EdgeInsets.symmetric(horizontal: 40),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: ElevatedButton.icon(
                        icon: const Icon(
                          Icons.touch_app,
                          size: 15,
                          color: Color.fromARGB(255, 0, 73, 109),
                        ),
                        onPressed: () => Scrollable.ensureVisible(
                          dataKey.currentContext!,
                          alignment: 1.0,
                          // alignmentPolicy: ScrollPositionAlignmentPolicy.explicit,
                          duration: const Duration(
                              seconds:
                                  1), // Obviously, these could be variables too.
                          curve: Curves.decelerate,
                        ),
                        label: const Text('Get in Touch',
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 73, 109))),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          elevation: 10,
                          shadowColor: Colors.black,
                          backgroundColor: Colors.cyanAccent,
                          textStyle: const TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ),
                  );
                },
                desktop: (context) {
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
                      duration: Duration(milliseconds: 1000),
                      margin: const EdgeInsets.only(left: 40),
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: ElevatedButton.icon(
                          icon: const Icon(
                            Icons.touch_app,
                            color: Color.fromARGB(255, 0, 73, 109),
                          ),
                          onPressed: () => Scrollable.ensureVisible(
                            dataKey.currentContext!,
                            alignment: 1.0,
                            // alignmentPolicy: ScrollPositionAlignmentPolicy.explicit,
                            duration: const Duration(
                                seconds:
                                    1), // Obviously, these could be variables too.
                            curve: Curves.decelerate,
                          ),
                          label: const Text('Get in Touch',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 0, 73, 109))),
                          style: ElevatedButton.styleFrom(
                            padding: isHover
                                ? EdgeInsets.all(23)
                                : EdgeInsets.all(20),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            backgroundColor: Colors.cyanAccent,
                            textStyle: const TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 10),
              ScreenTypeLayout.builder(
                mobile: (context) {
                  return Container(
                    // margin: EdgeInsets.symmetric(horizontal: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        socialIcon('https://www.linkedin.com/in/prashant-nane/',
                            SocialIconsFlutter.linkedin_box),
                        socialIcon('https://github.com/prashantnane',
                            SocialIconsFlutter.github),
                        socialIcon('https://www.instagram.com/prashant.nane/',
                            SocialIconsFlutter.instagram)
                      ],
                    ),
                  );
                },
                tablet: (context) {
                  return Container(
                    // margin: EdgeInsets.symmetric(horizontal: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        socialIcon('https://www.linkedin.com/in/prashant-nane/',
                            SocialIconsFlutter.linkedin_box),
                        socialIcon('https://github.com/prashantnane',
                            SocialIconsFlutter.github),
                        socialIcon('https://www.instagram.com/prashant.nane/',
                            SocialIconsFlutter.instagram)
                      ],
                    ),
                  );
                },
                desktop: (context) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 40),
                    child: Row(
                      children: [
                        socialIcon('https://www.linkedin.com/in/prashant-nane/',
                            SocialIconsFlutter.linkedin_box),
                        SizedBox(
                          width: 10,
                        ),
                        socialIcon('https://github.com/prashantnane',
                            SocialIconsFlutter.github),
                        SizedBox(
                          width: 10,
                        ),
                        socialIcon('https://www.instagram.com/prashant.nane/',
                            SocialIconsFlutter.instagram)
                      ],
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 25,
              ),
              const AboutMe(),
              const SizedBox(height: 10),
              const Skill(),
              const SizedBox(height: 20),
              const Project(),
              Container(
                margin: const EdgeInsets.all(15),
                child: Card(
                  key: dataKey,
                  child: const Contact(),
                ),
              ),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget socialIcon(String link, IconData iconPath) {
    return InkWell(
      onTap: () => html.window.open(link, '_blank'),
      child: SocialWidget(
        iconSize: 25,
        placeholderText: '',
        iconData: iconPath,
        iconColor: Colors.white,
        link: link,
      ),
    );
  }
}
