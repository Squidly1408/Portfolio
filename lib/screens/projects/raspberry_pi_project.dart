import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../widgets/footer.dart';
import '../../widgets/header.dart';
import '../../widgets/navigation_bar.dart';

class RaspberryPiProjectScreen extends StatefulWidget {
  const RaspberryPiProjectScreen({super.key});

  @override
  State<RaspberryPiProjectScreen> createState() =>
      _RaspberryPiProjectScreenState();
}

class _RaspberryPiProjectScreenState extends State<RaspberryPiProjectScreen> {
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
              'lib/assets/images/projects/Raspberry_Pi_project/Raspberry_Pi_Logo.png',
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
                        'Raspberry Pi',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
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
                        'Problem Solving',
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
                'Leading up to this project I completed some research onto projects with the Raspberry Pi and Arduino to help decide which I wanted to focus on learning and which will benefit me most to learn. \nI settled onto learning about the Raspberry Pi, answering the following question; \n\n "How can learning from structured projects influence my use of the Raspberry Pi?" \n\nUsing this Question I created a Learning Plan and Project Proposal to help outline my learning;\n\n',
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
                child: FittedBox(
                  fit: BoxFit.contain,
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
                                      'https://docs.google.com/document/d/1RQ9FJ4E8rQDDBEhwaTasFd9l7nEDR-gV/edit?usp=share_link&ouid=109215238090087040433&rtpof=true&sd=true'),
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
                                      'https://docs.google.com/document/d/1hEjWTvE63XhB8fED0sCNxxoqwHplHfnX/edit?usp=share_link&ouid=109215238090087040433&rtpof=true&sd=true'),
                                );
                              },
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RichText(
                          text: TextSpan(
                            text: 'Research Document\n',
                            style: const TextStyle(
                              color: Colors.white,
                              decoration: TextDecoration.underline,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                launchUrl(
                                  Uri.parse(
                                      'https://docs.google.com/document/d/1bdel28NvLNJvTJsWsGgrv4olkhAh7v2M/edit?usp=share_link&ouid=109215238090087040433&rtpof=true&sd=true'),
                                );
                              },
                          ),
                        ),
                      ),
                    ],
                  ),
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
                'As the first part of my project I emailed PiUpMyLife and asked if I could use their tutorials for my project, \n they ended up getting back to me saying yes, I could use their tutorials for my project and thankyou for asking, I ended up using two of the tutorials; \n\nSetting Up RetroPi\n\nRetroPi is an emulation software designed to emulate PC, Console, and other various types of games on the Raspberry Pi. \nI set-up the software following the tutorial PiUpMyLife gave me as the first part of my project. \n\nI completed the final project using my previous knowledge on the Raspberry Pi from completing the two tutorials I completed previously. \nI ended up using my knowledge on the Raspberry Pi to create a room temperature and humidity sensor, that displays the information by a 8x8 grid of RGB LED lights. \n\n\n',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.03),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: Image.asset(
                            'lib/assets/images/projects/Raspberry_Pi_project/RetroPi_Banner.png',
                            fit: BoxFit.contain),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: Image.asset(
                            'lib/assets/images/projects/Raspberry_Pi_project/Sense-hat.png',
                            fit: BoxFit.contain),
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
                'Through out my projects I highlighted a few major key issues both with presenting my work and the work itself; \n\nA major issue was motivation to get started. \n\nPresenting the work in a way that would keep my attention with minimal resources. \n\nIdentifying and troubleshooting mistakes in the tutorials I was following.\n\n\n',
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

class RaspberryPiProjectDisplay extends StatefulWidget {
  const RaspberryPiProjectDisplay({super.key});

  @override
  State<RaspberryPiProjectDisplay> createState() =>
      _RaspberryPiProjectDisplayState();
}

class _RaspberryPiProjectDisplayState extends State<RaspberryPiProjectDisplay> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: MaterialButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const RaspberryPiProjectScreen(),
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
                    'lib/assets/images/projects/Raspberry_Pi_project/Raspberry_Pi_Logo.png',
                    fit: BoxFit.contain,
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        'Raspberry Pi Project,',
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
