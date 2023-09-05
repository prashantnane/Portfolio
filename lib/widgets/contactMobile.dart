import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:social_media_flutter/social_media_flutter.dart';
import 'package:prashant_nane_portfolio/database.dart';
import 'dart:html' as html;

class ContactMobile extends StatefulWidget {
  const ContactMobile({super.key});

  @override
  State<ContactMobile> createState() => _ContactState();
}

class _ContactState extends State<ContactMobile> {
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

  TextEditingController userNameController = new TextEditingController();
  TextEditingController userEmailController = new TextEditingController();
  TextEditingController userSubjectController = new TextEditingController();
  TextEditingController userMessageController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Get In Touch!',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        const Text(
          'Contact me for hiring, or help me to join your team',
          style: TextStyle(fontSize: 10),
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            socialIcon('https://www.linkedin.com/in/prashant-nane/',
                SocialIconsFlutter.linkedin_box),
            socialIcon(
                'https://github.com/prashantnane', SocialIconsFlutter.github),
            socialIcon('https://www.instagram.com/prashant.nane/',
                SocialIconsFlutter.instagram)
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          margin: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: const Text('Contact Form',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: TextField(
                  style: const TextStyle(fontSize: 10, height: 2),
                  controller: userNameController,
                  decoration: const InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Icon(Icons.account_box),
                    ),
                    border: OutlineInputBorder(),
                    labelText: 'Your Name',
                    hintText: 'Enter Your Name',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: TextField(
                  style: const TextStyle(fontSize: 10, height: 2),
                  controller: userEmailController,
                  decoration: const InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Icon(Icons.mail),
                    ),
                    border: OutlineInputBorder(),
                    labelText: 'Your Email',
                    hintText: 'youremail@gmail.com',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: TextField(
                  style: const TextStyle(fontSize: 10, height: 2),
                  controller: userSubjectController,
                  decoration: const InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Icon(Icons.subject),
                    ),
                    border: OutlineInputBorder(),
                    labelText: 'Subject',
                    hintText: 'Hiring for..',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: TextField(
                  style: const TextStyle(fontSize: 10, height: 2),
                  controller: userMessageController,
                  keyboardType: TextInputType.multiline,
                  maxLines: 3,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Message',
                    hintText: 'Your Messages..',
                  ),
                ),
              ),
            ],
          ),
        ),
        ElevatedButton(
            onPressed: () {
              uploadData();
            },
            child: const Text('Send Message')),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }

  Widget socialIcon(String link, IconData iconPath) {
    return InkWell(
      
      onTap: () => html.window.open(link, '_blank'),
      child: SocialWidget(
        iconSize: 15,
        placeholderText: '',
        iconData: iconPath,
        iconColor: Colors.black,
        link: link,
      ),
    );
  }
}
