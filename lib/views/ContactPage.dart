import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:typicons_flutter/typicons_flutter.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Get In Touch!',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Contact me for hiring, or help me to join your team',
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    iconSize: 40,
                    icon: Icon(Typicons.social_twitter),
                    onPressed: () {},
                  ),
                  IconButton(
                    iconSize: 40,
                    icon: Icon(Typicons.social_github),
                    onPressed: () {},
                  ),
                  IconButton(
                    iconSize: 40,
                    icon: Icon(Typicons.social_linkedin),
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Text('Contact Form',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            child: Icon(Icons.account_box),
                          ),
                          border: OutlineInputBorder(),
                          labelText: 'Your Name',
                          hintText: 'Enter Your Name',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            child: Icon(Typicons.mail),
                          ),
                          border: OutlineInputBorder(),
                          labelText: 'Your Email',
                          hintText: 'youremail@gmail.com',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: TextField(
                        decoration: InputDecoration(
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
                      padding: EdgeInsets.all(15),
                      child: TextField(
                        keyboardType: TextInputType.multiline,
                        
                        maxLines: 3,
                        decoration: InputDecoration(
                          
                          border: OutlineInputBorder(),
                          labelText: 'Message',
                          hintText: 'Your Messages..',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(onPressed: () {}, child: Text('Send Message'))
            ],
          ),
        ),
      ),
    );
  }
}
