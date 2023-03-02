import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../widgets/footer.dart';
import '../../widgets/header.dart';
import '../../widgets/navigation_bar.dart';

class GloveProject extends StatefulWidget {
  const GloveProject({super.key});

  @override
  State<GloveProject> createState() => _GloveProjectState();
}

class _GloveProjectState extends State<GloveProject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(240, 23, 23, 23),
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.1),
        child: const Appbar(),
      ),
      body: DefaultTabController(
        length: 3,
        child: ListView(
          children: [
            Image.asset(
              'lib/assets/images/projects/Glove_Project/Glove_Project_logo.png',
              fit: BoxFit.contain,
            ),
            Container(
              color: const Color.fromARGB(255, 23, 23, 23),
              height: 35,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Skills Utilized:',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              color: const Color.fromARGB(255, 23, 23, 23),
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: MaterialButton(
                      onPressed: () {},
                      child: const Text(
                        'Trouble Shooting',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: MaterialButton(
                      onPressed: () {},
                      child: const Text(
                        'Eagle Cad',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: MaterialButton(
                      onPressed: () {},
                      child: const Text(
                        'Python',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: MaterialButton(
                      onPressed: () {},
                      child: const Text(
                        'Problem Solving',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: MaterialButton(
                      onPressed: () {},
                      child: const Text(
                        'Alternative Communications',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.03),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '\nPreperation',
                  style: TextStyle(
                    color: Color(0xff03767b),
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.03),
              child: const Text(
                'This project orginated by me finding out about flex sensors, essentially resistors that change resistance based on how much they are flexed. \nFrom that I came up with the idea that flex sensors could be used to read hand positions. \n\n3 terms later I finally got to start the glove project and created my learning plan and propsoal.\n\n',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                ),
              ),
            ),
            SizedBox(
              height: 35,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RichText(
                        text: TextSpan(
                          text: 'Learning Plan\n',
                          style: const TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.underline,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              launchUrl(
                                Uri.parse(
                                    'https://docs.google.com/document/d/1IN-_0PdeBrv8JApcxxaGClsy8lmr4tue/edit?usp=share_link&ouid=109215238090087040433&rtpof=true&sd=true'),
                              );
                            },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RichText(
                        text: TextSpan(
                          text: 'Proposal\n',
                          style: const TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.underline,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              launchUrl(
                                Uri.parse(
                                    'https://docs.google.com/document/d/1vowYMuibGD6BagGQV8-EMxDixm-Ay666/edit?usp=share_link&ouid=109215238090087040433&rtpof=true&sd=true'),
                              );
                            },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.03),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '\nProject',
                  style: TextStyle(
                    color: Color(0xff03767b),
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.03),
              child: const Text(
                'Part of this project was how I was going to translate hand movements and positions into digital signals that computers can read and understand. \nI did this by using a variety of sensors including; \n\nFlex Sensors, \nGyroscopic Sensor, \nAccelerometer Sensor, \nand a Force Sensitive Senor,\n\n\nTogether I aim to use these sensors to calculate the hand positions and movements in order to hopefully allow for sign language to be translated into a verbal form of communication.\n\n\n',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.03),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '\nReflect',
                  style: TextStyle(
                    color: Color(0xff03767b),
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.03),
              child: const Text(
                'This Project in not finished yet, but I can reflect from what has happened reguarding the glove project so far. \n\nGathering the materials and managing my time in order for me to create the divice a bug test is a major hurtle in this projects lifespan \nSand needed to handled well otherwise I would not be anywhere near finishing this project.\n\n\n',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                ),
              ),
            ),
            PreferredSize(
              preferredSize:
                  Size.fromHeight(MediaQuery.of(context).size.height * 0.1),
              child: const Footer(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const NavBar(),
    );
  }
}

class GloveProjectDisplay extends StatefulWidget {
  const GloveProjectDisplay({super.key});

  @override
  State<GloveProjectDisplay> createState() => _GloveProjectDisplayState();
}

class _GloveProjectDisplayState extends State<GloveProjectDisplay> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: MaterialButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const GloveProject(),
            ),
          );
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            color: const Color.fromARGB(255, 23, 23, 23),
            child: FittedBox(
              fit: BoxFit.contain,
              child: Column(
                children: [
                  Image.asset(
                    'lib/assets/images/projects/Glove_Project/Glove_Project_logo.png',
                    fit: BoxFit.contain,
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        'Glove Project,',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 200,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
