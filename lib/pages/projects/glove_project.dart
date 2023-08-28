import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../models/comment.dart';
import '../../models/mentors.dart';
import '../../models/project_resources.dart';
import '../../models/skills.dart';
import '../../widgets/footer.dart';
import '../../widgets/header.dart';

import '../profile.dart';

class GloveProject extends StatefulWidget {
  const GloveProject({super.key});

  @override
  State<GloveProject> createState() => _GloveProjectState();
}

class _GloveProjectState extends State<GloveProject> {
  var skillsScrollController = ScrollController();

// the data for the lists of the page

  final skills = [
    SkillsData(
      'Alternative \nCommunication',
      'lib/assets/images/skills/alternative_communcation_icon.png',
    ),
    SkillsData(
      'Arduino',
      'lib/assets/images/skills/arduino_logo.png',
    ),
    SkillsData(
      'Communication',
      'lib/assets/images/skills/communication_logo.png',
    ),
    SkillsData(
      'Dart',
      'lib/assets/images/skills/dart_logo.png',
    ),
    SkillsData(
      'Eagle \nCAD',
      'lib/assets/images/skills/eagle_cad_logo.png',
    ),
    SkillsData(
      'Empirical \nReasoning',
      'lib/assets/images/skills/empirical_reasoning_logo.png',
    ),
    SkillsData(
      'Flutter',
      'lib/assets/images/skills/flutter_logo.png',
    ),
    SkillsData(
      'Fusion \n360',
      'lib/assets/images/skills/fusion_360_logo.png',
    ),
    SkillsData(
      'Personal \nReasoning',
      'lib/assets/images/skills/personal_qualities.png',
    ),
    SkillsData(
      'Python',
      'lib/assets/images/skills/python_logo.png',
    ),
    SkillsData(
      'Quantative \nReasoning',
      'lib/assets/images/skills/quantativ_reasoning_logo.png',
    ),
    SkillsData(
      'Raspberyy \nPi',
      'lib/assets/images/skills/raspberry_pi_logo.png',
    ),
    SkillsData(
      'Social \nReasoning',
      'lib/assets/images/skills/social_reasoning_logo.png',
    ),
    SkillsData(
      'Trouble \nShooting',
      'lib/assets/images/skills/trouble_shooting_logo.png',
    ),
  ];

  List<String> stepsToComplete = [
    'Research similar devices.',
    'create an understanding of how they work.',
    'Research the history of the topic.',
    'Research parts and how they will interact with each other.',
    'Get mentors to help with the project.',
    'Create a prototype of the device',
    'Test the prototype and imrpove on the flaws.'
        'repeat.',
  ];

  List<ProjectResources> resources = [
    ProjectResources(
      'Change Log v2',
      'https://schoolsnsw-my.sharepoint.com/:w:/g/personal/lucas_wonderley_education_nsw_gov_au/EWEGdIy19FZGhprHF3lpeSkBHO5FrcHSty1QGAxA5_h3eQ?e=1c7laF',
    ),
  ];

  List<Mentors> mentors = [
    Mentors(
      'Saphi',
      'https://saphi.engineering/',
    ),
    Mentors(
      'UON',
      'https://www.newcastle.edu.au/study/undergraduate?utm_campaign=eni-uon-undergrad-intake-cm-ugd&gad=1&gclid=Cj0KCQjw3JanBhCPARIsAJpXTx713DhA_yKEEOpZP-AZdpqeFkioVBOIPtps4knYClCzWalXsGnus3EaAgGqEALw_wcB&gclsrc=aw.ds',
    ),
    Mentors(
      'Dr Jacqualine Bailey',
      'https://www.newcastle.edu.au/profile/jacqueline-d-bailey',
    ),
  ];

  List<Comment> comments = [
    Comment(
      '',
      '',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff171717),

      // header section (always visible)
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.0801),
        child: const Header(),
      ),

      // footer making sure that its invisible when screen is smaller then 1000 px
      bottomNavigationBar: Visibility(
        visible: MediaQuery.of(context).size.width < 1000,
        child: PreferredSize(
          preferredSize:
              Size.fromHeight(MediaQuery.of(context).size.height * 0.1),
          child: const Footer(),
        ),
      ),

      // body
      body: SizedBox(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // main banner for the page
              Image.asset(
                'lib/assets/images/homepage/homepage_banner.png',
                fit: BoxFit.fitWidth,
              ),
              // title and cost of project, flex element so it adapts to smaller screens and turns into a Column optherwise its a Row
              Container(
                width: MediaQuery.of(context).size.width,
                color: const Color(0xff171717),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.15,
                  ),
                  child: Flex(
                    direction: MediaQuery.of(context).size.width > 1000
                        ? Axis.horizontal
                        : Axis.vertical,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // title of the page
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Auslan Glove Project',
                          style: TextStyle(
                              color: Color(0xff10d0d6),
                              fontSize: 50,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                      // cost of the project that links to spreadsheet of the costs but sincwe there arnt any the link is left empty so you can add it later
                      TextButton(
                        style:
                            const ButtonStyle(alignment: Alignment.centerLeft),
                        onPressed: () {
                          launchUrl(
                            Uri.parse(''),
                          );
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            ('Costs: \$500.00'),
                            style: TextStyle(
                                color: Color(0xffffffff),
                                fontSize: 15,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // description of the page
              Container(
                width: MediaQuery.of(context).size.width,
                color: const Color(0xff171717),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width > 1000
                          ? MediaQuery.of(context).size.width * 0.15
                          : 8.0),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Description',
                          style: TextStyle(
                              color: Color(0xffffffff),
                              fontSize: 25,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "The original idea for the glove project came from me finding out about a type of sensor called a flex sensor when scrolling an online store, essentially a resistor like electrical component that increases resistance of an electrical circuit when flexed letting you measure how much its flexed. After finding out about the flex sensor I came up with the idea of using it to measure the percentage that fingers are flexed for a sign-language conversion device. This idea came from working on an augmentative and alternative communication (AAC) program designed to help develop or replace verbal communication. The idea of using electronics to be used for assistive communication is not a new idea, neither is using a glove like device to recognise sign language. It has been done many times and I’ve done it one more time.\n\n\nVersion one: \n\nThe first version of the glove was designed with a Raspberry Pi zero w and three flex sensors to create a test of the product, it was planned to have an gyroscopic and accelerometer as well as a HAT for the Raspberry Pi zero w, the HAT was to allow for a battery specifically a 3-pin Li-Po battery at 1000mAh to be connected this, but this version only got to testing the microcontroller before a realisation was made, the raspberry Pi zero w doesn’t allow for ADC, which meant that the flex sensors that were going to be used in the test could not be used, due to not being able to measure the output of the flex sensors. \n\n\nVersion two:  \n\nThe second version of the glove project was designed to improve where the previous version failed, by implementing a new microcontroller, the Pimoroni Pico Li-Po. This microcontroller had 3 ADC pinouts and a battery connection inbuilt into the microcontroller, this adjustment allowed testing with the flex sensors as well as no need for a separate HAT for a battery connection but at the cost of changing the battery connection type from 3-pin connecter to a 2-pin JST-PH connector. We ended up testing the three flex sensors and made sure they worked, but soon came into a few problems, how were we going to transfer the data; we couldn’t access the required data for all sign language signs due to only having three ADC pinouts; the battery could be damaged relatively easily and so could the electronics due to them not being covered.\n\nVersion three:\n\nThis version was made to fix the outlining issues with the previous version. how were we going to transfer the data; we couldn’t access the required data for all sign language signs due to only having 3 ADC pinouts; the battery could be damaged relatively easily and so could the electronics due to them not being covered.\nWe did this by first finding a new microcontroller, one that has more then 3 ADC pinouts, a battery connector to allow for a streamlined battery connection, and a Bluetooth connection to transfer the data easily and wirelessly from the sensors. We ended up with a Adafruit feather 32uf Bluefruit LE module. This microcontroller has Bluetooth connection built in and documentation letting it to act has as a HID device. With this I was able to send the data collected from the sensors wirelessly and it can have a custom output, if you make a c shape with your hand it could output the letter ‘C’. I was also able to 3d print a battery protection plate that encases the battery, to make sure the battery can be protected from any unforeseen damage coursed by hitting the battery against tougher things.\n\nVersion four:\n\nVersion four finally added the 3d accelerometer and gyroscopic sensors to let the glove sense hand positioning and movement, not just sensing the movement of the fingers. All tests went well with it and the data was able to be received and read by the glove.\n\nVersion five:\n\nVersion five is in the designing stage at the point of writing this, its purpose it to battle the delicate nature of the glove so far and make sure it doesn’t break itself with vast use and to test the best way to protect the electronics inside the glove. Another change was making the charging port more accessible allowing for an easier time to recharge the device.\n\n\nThis Project in not finished yet, but I can reflect from what has happened reguarding the glove project so far. \n\nGathering the materials and managing my time in order for me to create the divice a bug test is a major hurtle in this projects lifespan \nSand needed to handled well otherwise I would not be anywhere near finishing this project.\n\n\n",
                          style: TextStyle(
                            color: Color(0xffffffff),
                            fontSize: 15,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              // SKills section
              Container(
                width: MediaQuery.of(context).size.width,
                color: const Color(0xff171717),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width > 1000
                          ? MediaQuery.of(context).size.width * 0.15
                          : 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Skills',
                          style: TextStyle(
                              color: Color(0xffffffff),
                              fontSize: 25,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                      GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 1 / 0.4,
                            crossAxisCount:
                                MediaQuery.of(context).size.width > 500
                                    ? MediaQuery.of(context).size.width > 1000
                                        ? 3
                                        : 2
                                    : 1),
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: skills.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  maxRadius: 25,
                                  backgroundColor: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(skills[index].img),
                                  ),
                                ),
                                Text(skills[index].name,
                                    textAlign: TextAlign.center,
                                    style:
                                        const TextStyle(color: Colors.white)),
                              ],
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              // the steps to complete section, this section is under a flex element so that it can adapt to smaller screens
              Flex(
                direction: MediaQuery.of(context).size.width > 400
                    ? Axis.horizontal
                    : Axis.vertical,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    color: const Color(0xff171717),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width > 1000
                              ? MediaQuery.of(context).size.width * 0.15
                              : 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Steps to complete',
                              style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontSize: 25,
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                          ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: stepsToComplete.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  child: Text(
                                    '\u2022  ${stepsToComplete[index]}',
                                    style: const TextStyle(
                                      color: Color(0xffffffff),
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  // resources / help section of the page
                  Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    color: const Color(0xff171717),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width > 1000
                              ? MediaQuery.of(context).size.width * 0.15
                              : 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Resources & Help',
                              style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontSize: 25,
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                          ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: resources.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextButton(
                                  style: const ButtonStyle(
                                      alignment: Alignment.centerLeft),
                                  onPressed: () {
                                    launchUrl(
                                      Uri.parse(resources[index].link),
                                    );
                                  },
                                  child: SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.6,
                                    child: Text(
                                      resources[index].name,
                                      style: const TextStyle(
                                        color: Color(0xffffffff),
                                        fontSize: 15,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              // mentors section of the page
              Container(
                width: MediaQuery.of(context).size.width,
                color: const Color(0xff171717),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width > 1000
                          ? MediaQuery.of(context).size.width * 0.15
                          : 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Mentors & People',
                          style: TextStyle(
                              color: Color(0xffffffff),
                              fontSize: 25,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: mentors.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              child: TextButton(
                                style: const ButtonStyle(
                                    alignment: Alignment.centerLeft),
                                onPressed: () {
                                  launchUrl(
                                    Uri.parse(mentors[index].link),
                                  );
                                },
                                child: Row(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: CircleAvatar(
                                        backgroundColor: Color(0xff10d0d6),
                                        child: Icon(
                                          Icons.person,
                                          color: Color(0xff171717),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.28,
                                      child: Text(
                                        mentors[index].name,
                                        style: const TextStyle(
                                          color: Color(0xffffffff),
                                          fontSize: 15,
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              // comments section of the page
              Container(
                width: MediaQuery.of(context).size.width,
                color: const Color(0xff171717),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width > 1000
                          ? MediaQuery.of(context).size.width * 0.15
                          : 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Comments',
                          style: TextStyle(
                              color: Color(0xffffffff),
                              fontSize: 25,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        addRepaintBoundaries: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: comments.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              child: Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: CircleAvatar(
                                      backgroundColor: Color(0xffffffff),
                                      child: Icon(
                                        Icons.person,
                                        color: Color(0xff171717),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        comments[index].name,
                                        style: const TextStyle(
                                          color: Color(0xffffffff),
                                          fontSize: 10,
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.6,
                                        child: Text(
                                          comments[index].content,
                                          style: const TextStyle(
                                            color: Color(0xffffffff),
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
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
            GoRouter.of(context).go('/projects/auslan-glove');
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
