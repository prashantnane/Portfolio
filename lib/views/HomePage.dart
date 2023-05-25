import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:typicons_flutter/typicons_flutter.dart';

import './ProfilePage.dart';
import './ProjectsPage.dart';
import './ContactPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController pageController =
      PageController(initialPage: 0, keepPage: true);
  int _page = 0;

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  void navigationTapped(int page) {
    pageController.jumpToPage(page);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 74, 125, 150),
      body: PageView(
        children: <Widget>[
          Container(
            child: ProfilePage(),
          ),
          Container(
            child: Projects(),
          ),
          
          Center(
              child: ContactPage(),),
        ],
        controller: pageController,
        onPageChanged: onPageChanged,
      ),
      bottomNavigationBar: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: BottomNavigationBar(
            selectedItemColor: Colors.cyanAccent,
            unselectedItemColor: Colors.white54,
            backgroundColor: Color.fromARGB(255, 74, 125, 150),
            items: <BottomNavigationBarItem>[
              
              BottomNavigationBarItem(
                
                icon: Icon(Typicons.home,
                    color: (_page == 0) ? Colors.cyanAccent : Colors.white54),
                    
                label: "Home",
              
                // style: TextStyle(
                //     fontSize: _labelFontSize,
                //     color: (_page == 0)
                //         ? UniversalVariables.lightBlueColor
                //         : Colors.grey),
              ),
              
              BottomNavigationBarItem(
                icon: Icon(Typicons.th_list,
                    color: (_page == 1) ? Colors.cyanAccent : Colors.white54),
                label: "Projects",
                //   style: TextStyle(
                //       fontSize: _labelFontSize,
                //       color: (_page == 1)
                //           ? UniversalVariables.lightBlueColor
                //           : Colors.grey),
                // ),
              ),
              
              BottomNavigationBarItem(
                icon: Icon(Icons.person,
                    color: (_page == 2) ? Colors.cyanAccent : Colors.white54),
                label: "Contact",
                // style: TextStyle(
                //     fontSize: _labelFontSize,
                //     color: (_page == 3)
                //         ? UniversalVariables.lightBlueColor
                //         : Colors.grey),
                // ),
              ),
            ],
            onTap: navigationTapped,
            currentIndex: _page,
          ),
        ),
      ),
    );
  }
}
