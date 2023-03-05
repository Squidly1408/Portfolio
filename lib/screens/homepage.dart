import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

import '../widgets/about_me.dart';
import '../widgets/footer.dart';
import '../widgets/header.dart';
import '../widgets/navigation_bar.dart';
import 'LTI/lti_clickk.dart';
import 'LTI/lti_saphi.dart';
import 'projects/Energy_Realease_Rate.dart';
import 'projects/aac_project.dart';
import 'projects/glove_project.dart';
import 'projects/raspberry_pi_project.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final ScrollController scrollcontroller = ScrollController();
  final ScrollController scrollcontroller2 = ScrollController();
  final ScrollController scrollcontroller3 = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(240, 23, 23, 23),
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.1),
        child: const Appbar(),
      ),
      body: ListView(
        children: [
          Image.asset(
            'lib/assets/images/homepage/homepage_banner.png',
            fit: BoxFit.contain,
          ),
          Container(
            color: const Color.fromARGB(255, 23, 23, 23),
            height: 35,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Skills:',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            color: const Color.fromARGB(255, 23, 23, 23),
            height: 40,
            child: RawScrollbar(
              controller: scrollcontroller,
              thumbColor: const Color(0xff10d0d6),
              child: ListView(
                controller: scrollcontroller,
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: MaterialButton(
                      onPressed: () {},
                      child: const Text(
                        'HTML',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: MaterialButton(
                      onPressed: () {},
                      child: const Text(
                        'CSS',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: MaterialButton(
                      onPressed: () {},
                      child: const Text(
                        'JavaSCript',
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
                        'Dart',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: MaterialButton(
                      onPressed: () {},
                      child: const Text(
                        'Flutter',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: MaterialButton(
                      onPressed: () {},
                      child: const Text(
                        'Fusion 360',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: MaterialButton(
                      onPressed: () {},
                      child: const Text(
                        'EAGLE CAD',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: MaterialButton(
                      onPressed: () {},
                      child: const Text(
                        'Entreprenurial Mindset',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: MaterialButton(
                      onPressed: () {},
                      child: const Text(
                        'ICT Support',
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
                        'Raspberry Pi',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const AboutMe(),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.03),
            child: const Align(
              alignment: Alignment.center,
              child: Text(
                'LTIs and Projects',
                style: TextStyle(
                  color: Color(0xff03767b),
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.width * 0.7,
              child: RawScrollbar(
                controller: scrollcontroller2,
                thumbColor: const Color(0xff03767b),
                isAlwaysShown: true,
                child: GridView.count(
                  controller: scrollcontroller2,
                  padding: const EdgeInsetsDirectional.all(8),
                  crossAxisCount: 3,
                  children: const [
                    AACProjectDisplay(),
                    RaspberryPiProjectDisplay(),
                    GloveProjectDisplay(),
                    EnergyReleaseRateDisplay(),
                    LTIClickkDisplay(),
                    LTISaphiDisplay(),
                  ],
                ),
              ),
            ),
          ),
          Container(
            color: const Color.fromARGB(255, 23, 23, 23),
            height: 35,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Certificates and awards:",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            color: const Color.fromARGB(255, 23, 23, 23),
            height: 35,
            child: FittedBox(
              fit: BoxFit.contain,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RichText(
                      text: TextSpan(
                        text: 'First Aid Certificate\n',
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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RichText(
                      text: TextSpan(
                        text: 'Hunter FuturePrenuers Mindset Bootcamp\n',
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
          PreferredSize(
            preferredSize:
                Size.fromHeight(MediaQuery.of(context).size.height * 0.1),
            child: const Footer(),
          ),
        ],
      ),
      bottomNavigationBar: const NavBar(),
    );
  }
}

//Friendships are limited and dont last forever so remember the times where it mattered the most you, 
//remember the times where you smiled together and the times you laughed. 
//Never take that for granted for one day it may not be there anymore.