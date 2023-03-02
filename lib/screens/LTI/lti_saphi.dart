import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../widgets/footer.dart';
import '../../widgets/header.dart';
import '../../widgets/navigation_bar.dart';

class LTISaphi extends StatefulWidget {
  const LTISaphi({super.key});

  @override
  State<LTISaphi> createState() => _LTISaphiState();
}

class _LTISaphiState extends State<LTISaphi> {
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
              'lib/assets/images/LTIs/Saphi/Saphi_logo.png',
              fit: BoxFit.contain,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.03),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '\nAbout',
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
                'SAPHI is a team of elite technologists dedicated to creating the next generation of powerful industrial solutions that set the standard for performance and efficiency. Leveraging the very best in robust technologies, SAPHI produce the solutions that keep clients ahead of the market and deliver turn-key solutions spanning from concept design through to continuous improvement & sustainment.\n\n\n',
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
                  '\nProjects',
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
                'First Project \n\nMy first project at SAPHI got me learning Flutter and Dart, flutter is a programming package which is built on top of dart and allows you to create web, IOS, Android, Linux and windows apps. \nI continued to use this knowledge creating my AAC Program.\n\nSecond Project \n\nMy Second project consisted of me learning Fusion 360 to design an encolsure for an electronics project SAPHI was conducting, this enclosure needed all the electronics to be held on the inside with two ports out, one for a LED power button and one for a solar panel to be connected to the electronics inside.\n\n\n',
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
                  '\nImages',
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
                            'lib/assets/images/LTIs/Saphi/Saphi_First_Project.PNG',
                            fit: BoxFit.contain),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: Image.asset(
                            'lib/assets/images/LTIs/Saphi/Saphi_Enclosure_Design1.jpg',
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
                            'lib/assets/images/LTIs/Saphi/Saphi_Three_D_Printing.jpg',
                            fit: BoxFit.contain),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: Image.asset(
                            'lib/assets/images/LTIs/Saphi/saphi_photo.jpg',
                            fit: BoxFit.contain),
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
      ),
      bottomNavigationBar: const NavBar(),
    );
  }
}

class LTISaphiDisplay extends StatefulWidget {
  const LTISaphiDisplay({super.key});

  @override
  State<LTISaphiDisplay> createState() => _LTISaphiDisplayState();
}

class _LTISaphiDisplayState extends State<LTISaphiDisplay> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: MaterialButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const LTISaphi(),
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
                    'lib/assets/images/LTIs/Saphi/Saphi_logo.png',
                    fit: BoxFit.contain,
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        'Saphi,',
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
