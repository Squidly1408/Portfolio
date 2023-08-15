import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../data/glove_project.dart';
import '../../widgets/footer.dart';
import '../../widgets/header.dart';

import '../../widgets/text_banner.dart';
import '../profile.dart';

class GloveProject extends StatefulWidget {
  const GloveProject({super.key});

  @override
  State<GloveProject> createState() => _GloveProjectState();
}

class _GloveProjectState extends State<GloveProject> {
  var skillsScrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff8d818c),
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.0801),
        child: const Header(),
      ),
      bottomNavigationBar: Visibility(
        visible: MediaQuery.of(context).size.width < 1000,
        child: PreferredSize(
          preferredSize:
              Size.fromHeight(MediaQuery.of(context).size.height * 0.1),
          child: const Footer(),
        ),
      ),
      body: SizedBox(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'lib/assets/images/projects/Glove_Project/Glove_Project_logo.png',
                fit: BoxFit.fitWidth,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 30,
                color: const Color(0xff171717),
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      'Skills:',
                      style: TextStyle(
                          color: Colors.white,
                          decorationStyle: TextDecorationStyle.solid),
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 125,
                color: const Color(0xff171717),
                child: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: RawScrollbar(
                    thumbColor: const Color(0xff03767b),
                    controller: skillsScrollController,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      controller: skillsScrollController,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8),
                          child: SizedBox(
                            width: 100,
                            child: Column(
                              children: [
                                CircleAvatar(
                                  maxRadius: 25,
                                  backgroundColor: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                        gpSkillImageData[index].data),
                                  ),
                                ),
                                Text(gpSkillTitleData[index].data,
                                    textAlign: TextAlign.center,
                                    style:
                                        const TextStyle(color: Colors.white)),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              ListView(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: [
                  const TextBanner(
                      title: 'Preperation',
                      text:
                          'The glove project is a school project conducted by Lucas P.E Newman, to try and create a wear-able glove like device with the potential to recognise hand positions and movement through 5 flex sensors located at each finger and the gyroscopic and accelerometer sensors on the hand, the device is designed to convert the data received form the sensors to a verbal form of communication like English through comparing the data to a sign language database. The final product is to be comfortable to wear, aesthetically pleasing, durable, as well as holding a function in everyday use.\n\n'),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 70,
                    color: const Color(0xff171717),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
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
                                              'https://1drv.ms/w/s!AlWOX6vBn5L2nXx1lHU45MHp8qDp?e=tofuvu'),
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
                                              'https://1drv.ms/w/s!AlWOX6vBn5L2nX0fIirRLp-YrJAX?e=BzWfgd'),
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
                  ),
                  const TextBanner(
                      title: 'Introduction',
                      text:
                          "The original idea for the glove project came from me finding out about a type of sensor called a flex sensor when scrolling an online store, essentially a resistor like electrical component that increases resistance of an electrical circuit when flexed letting you measure how much its flexed. After finding out about the flex sensor I came up with the idea of using it to measure the percentage that fingers are flexed for a sign-language conversion device. This idea came from working on an augmentative and alternative communication (AAC) program designed to help develop or replace verbal communication. The idea of using electronics to be used for assistive communication is not a new idea, neither is using a glove like device to recognise sign language. It has been done many times and I’ve done it one more time.\n\n\n"),
                  const TextBanner(
                      title: 'Reflect',
                      text:
                          "Version one: \n\nThe first version of the glove was designed with a Raspberry Pi zero w and three flex sensors to create a test of the product, it was planned to have an gyroscopic and accelerometer as well as a HAT for the Raspberry Pi zero w, the HAT was to allow for a battery specifically a 3-pin Li-Po battery at 1000mAh to be connected this, but this version only got to testing the microcontroller before a realisation was made, the raspberry Pi zero w doesn’t allow for ADC, which meant that the flex sensors that were going to be used in the test could not be used, due to not being able to measure the output of the flex sensors. \n\n\nVersion two:  \n\nThe second version of the glove project was designed to improve where the previous version failed, by implementing a new microcontroller, the Pimoroni Pico Li-Po. This microcontroller had 3 ADC pinouts and a battery connection inbuilt into the microcontroller, this adjustment allowed testing with the flex sensors as well as no need for a separate HAT for a battery connection but at the cost of changing the battery connection type from 3-pin connecter to a 2-pin JST-PH connector. We ended up testing the three flex sensors and made sure they worked, but soon came into a few problems, how were we going to transfer the data; we couldn’t access the required data for all sign language signs due to only having three ADC pinouts; the battery could be damaged relatively easily and so could the electronics due to them not being covered.\n\nVersion three:\n\nThis version was made to fix the outlining issues with the previous version. how were we going to transfer the data; we couldn’t access the required data for all sign language signs due to only having 3 ADC pinouts; the battery could be damaged relatively easily and so could the electronics due to them not being covered.\nWe did this by first finding a new microcontroller, one that has more then 3 ADC pinouts, a battery connector to allow for a streamlined battery connection, and a Bluetooth connection to transfer the data easily and wirelessly from the sensors. We ended up with a Adafruit feather 32uf Bluefruit LE module. This microcontroller has Bluetooth connection built in and documentation letting it to act has as a HID device. With this I was able to send the data collected from the sensors wirelessly and it can have a custom output, if you make a c shape with your hand it could output the letter ‘C’. I was also able to 3d print a battery protection plate that encases the battery, to make sure the battery can be protected from any unforeseen damage coursed by hitting the battery against tougher things.\n\nVersion four:\n\nVersion four finally added the 3d accelerometer and gyroscopic sensors to let the glove sense hand positioning and movement, not just sensing the movement of the fingers. All tests went well with it and the data was able to be received and read by the glove.\n\nVersion five:\n\nVersion five is in the designing stage at the point of writing this, its purpose it to battle the delicate nature of the glove so far and make sure it doesn’t break itself with vast use and to test the best way to protect the electronics inside the glove. Another change was making the charging port more accessible allowing for an easier time to recharge the device.\n\n\n"),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 70,
                    color: const Color(0xff171717),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: RichText(
                                  text: TextSpan(
                                    text: 'Change log\n',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      decoration: TextDecoration.underline,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        launchUrl(
                                          Uri.parse(
                                              'https://schoolsnsw-my.sharepoint.com/:w:/g/personal/lucas_wonderley_education_nsw_gov_au/Eau7dwBJAPVPudVKjFJ43PkB3BwcMN5GN4HpD3h7sjAc5A?e=0TYSga'),
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
                  ),
                  const TextBanner(
                      title: 'Reflect',
                      text:
                          'This Project in not finished yet, but I can reflect from what has happened reguarding the glove project so far. \n\nGathering the materials and managing my time in order for me to create the divice a bug test is a major hurtle in this projects lifespan \nSand needed to handled well otherwise I would not be anywhere near finishing this project.\n\n\n'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class GloveProjectDisplay1 extends StatefulWidget {
  const GloveProjectDisplay1({super.key});

  @override
  State<GloveProjectDisplay1> createState() => _GloveProjectDisplay1State();
}

class _GloveProjectDisplay1State extends State<GloveProjectDisplay1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: MaterialButton(
        onPressed: () {
          if (mounted) {
            GoRouter.of(context).go('/project/auslan-glove');
          }
        },
        child: Card(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              topLeft: Radius.circular(10),
            ),
          ),
          color: const Color(0xff171717),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
                child: AppBar(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                    ),
                  ),
                  automaticallyImplyLeading: false,
                  shadowColor: const Color(0xff10d0d6),
                  backgroundColor: const Color(0xff171717),
                  titleSpacing: 0,
                  title: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.95,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 1.0),
                          child: MaterialButton(
                            onPressed: () {
                              if (mounted) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Profile(),
                                  ),
                                );
                              }
                            },
                            child: const CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage(
                                  'lib/assets/images/profile_picture.png'),
                            ),
                          ),
                        ),
                        const Text(
                          'Glove Project',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  actions: [
                    Visibility(
                      visible: MediaQuery.of(context).size.width > 500,
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'Term 4 2022 - ???',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Image.asset(
                  'lib/assets/images/projects/Glove_Project/Glove_Project_logo.png',
                  fit: BoxFit.fitWidth,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
