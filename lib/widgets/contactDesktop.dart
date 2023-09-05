import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:social_media_flutter/social_media_flutter.dart';
import 'package:prashant_nane_portfolio/database.dart';
import 'dart:html' as html;

class ContactDesktop extends StatefulWidget {
  const ContactDesktop({super.key});

  @override
  State<ContactDesktop> createState() => _ContactState();
}

class _ContactState extends State<ContactDesktop> {
  TextEditingController userNameController = new TextEditingController();
  TextEditingController userEmailController = new TextEditingController();
  TextEditingController userSubjectController = new TextEditingController();
  TextEditingController userMessageController = new TextEditingController();
  bool isHover = false;
  bool isValid = false;

  uploadData() async {
    Map<String, dynamic> upload = {
      "Name": userNameController.text,
      "Email": userEmailController.text,
      "Subject": userSubjectController.text,
      "Message": userMessageController.text,
    };

    await DatabaseMethods().addDetails(upload);
    Fluttertoast.showToast(
        msg: "Message Send",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Get In Touch!',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'Contact me for hiring, or help me to join your team',
            style: TextStyle(fontSize: 15),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 5,
              ),
              socialIcon('https://www.linkedin.com/in/prashant-nane/',
                  SocialIconsFlutter.linkedin_box),
              SizedBox(
                width: 5,
              ),
              socialIcon(
                  'https://github.com/prashantnane', SocialIconsFlutter.github),
              SizedBox(
                width: 5,
              ),
              socialIcon('https://www.instagram.com/prashant.nane/',
                  SocialIconsFlutter.instagram)
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: const Text('Contact Form',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextField(
                    controller: userNameController,
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child: Icon(Icons.account_box),
                      ),
                      border: OutlineInputBorder(),
                      labelText: 'Your Name',
                      hintText: 'Enter Your Name',
                      errorText:
                          isValid == true ? "Value Can't Be Empty" : null,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    controller: userEmailController,
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child: Icon(Icons.mail),
                      ),
                      border: OutlineInputBorder(),
                      labelText: 'Your Email',
                      hintText: 'youremail@gmail.com',
                      errorText:
                          isValid == true ? "Value Can't Be Empty" : null,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextField(
                    controller: userSubjectController,
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child: Icon(Icons.subject),
                      ),
                      border: OutlineInputBorder(),
                      labelText: 'Subject',
                      hintText: 'Hiring for..',
                      errorText:
                          isValid == true ? "Value Can't Be Empty" : null,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    controller: userMessageController,
                    keyboardType: TextInputType.multiline,
                    maxLines: 3,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Message',
                      hintText: 'Your Messages..',
                      errorText:
                          isValid == true ? "Value Can't Be Empty" : null,
                    ),
                  ),
                ),
              ],
            ),
          ),
          MouseRegion(
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
              height: isHover ? 50 : 40,
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      (userNameController.text.isEmpty ||
                              userEmailController.text.isEmpty ||
                              userSubjectController.text.isEmpty ||
                              userMessageController.text.isEmpty)
                          ? isValid = true
                          : isValid = false;
                      uploadData();
                    });
                  },
                  child: const Text(
                    'Send Message',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 73, 109),
                    ),
                  )),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }

  Widget socialIcon(String link, IconData iconPath) {
    return InkWell(
      onTap: () => html.window.open(link, '_blank'),
      child: SocialWidget(
        placeholderText: '',
        iconData: iconPath,
        iconColor: Colors.black,
        link: link,
      ),
    );
  }
}
