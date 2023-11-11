// packages
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// pages
import '../main.dart';

// widgets
import '../widgets/header.dart';

class Outlearning extends StatefulWidget {
  const Outlearning({super.key});

  @override
  State<Outlearning> createState() => _OutlearningState();
}

class _OutlearningState extends State<Outlearning> {
  // scaffold
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColour, // black

      // added header which acts as a links / navigation to home / logo
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: Header(
          homePage: false,
        ),
      ),

      // Body paragraph
      // need to insert links to pages / sources and all
      body: SizedBox(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  // banner / title / description
                  Stack(
                    children: [
                      // background image
                      Image.asset(
                        'lib/assets/images/outlearning/outlearning_banner.png',
                        fit: BoxFit.fitWidth,
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.65,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // title
                                  Text(
                                    'OutLearning',
                                    style: TextStyle(
                                        color: mainColour,
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.04),
                                  ),
                                  // description
                                  Text(
                                    "LTI or Learning Through Internship is a program ran by Big Picture School that gets students to go into the workforce to learn real life and practical skills related to their passions. We find these chances ourselves through online resaerch and contacting business's, organisations, or charities.",
                                    style: TextStyle(
                                        color: secondaryColour3,
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.02),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  // outlearning banner
                  MaterialButton(
                    onPressed: () {
                      launchUrl(
                        Uri.parse('https://saphi.engineering/'),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: 8,
                        top: 8,
                      ),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            'lib/assets/images/outlearning/saphi.png',
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // divider
                  Image.asset(
                    'lib/assets/images/outlearning/divider.png',
                    fit: BoxFit.fitWidth,
                  ),
                  // outlearning banner
                  MaterialButton(
                    onPressed: () {
                      launchUrl(
                        Uri.parse('https://www.newcastle.edu.au/'),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: 8,
                        top: 8,
                      ),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            'lib/assets/images/outlearning/uon.png',
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // divider
                  Image.asset(
                    'lib/assets/images/outlearning/divider.png',
                    fit: BoxFit.fitWidth,
                  ),
                  // outlearning banner
                  MaterialButton(
                    onPressed: () {
                      launchUrl(
                        Uri.parse('https://clickk.com.au/'),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: 8,
                        top: 8,
                      ),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            'lib/assets/images/outlearning/clickk.png',
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // divider
                  Image.asset(
                    'lib/assets/images/outlearning/divider.png',
                    fit: BoxFit.fitWidth,
                  ),
                  // outlearning banner
                  MaterialButton(
                    onPressed: () {
                      launchUrl(
                        Uri.parse('https://nubook.nubots.net/'),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: 8,
                        top: 8,
                      ),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            'lib/assets/images/outlearning/nubots.png',
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // divider
                  Image.asset(
                    'lib/assets/images/outlearning/footer_image.png',
                    fit: BoxFit.fitWidth,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
