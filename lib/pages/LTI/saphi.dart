import 'package:flutter/material.dart';

import '../../models/skills.dart';
import '../../widgets/footer.dart';
import '../../widgets/header.dart';

import '../profile.dart';

class LTISaphi extends StatefulWidget {
  const LTISaphi({super.key});

  @override
  State<LTISaphi> createState() => _LTISaphiState();
}

class _LTISaphiState extends State<LTISaphi> {
  final projects = [
    SkillsData(
      'Learning Blender',
      'lib/assets/images/skills/blender_logo.png',
    ),
    SkillsData(
      'Learning Dart',
      'lib/assets/images/skills/dart_logo.png',
    ),
    SkillsData(
      'Learning Flutter',
      'lib/assets/images/skills/flutter_logo.png',
    ),
    SkillsData(
      'Learning Eagle CAD \nand PCB design',
      'lib/assets/images/skills/eagle_cad_logo.png',
    ),
    SkillsData(
      'Learning Fusion \n360',
      'lib/assets/images/skills/fusion_360_logo.png',
    ),
    SkillsData(
      'Learning Python',
      'lib/assets/images/skills/python_logo.png',
    ),
    SkillsData(
      'Learning how to use \nthe Raspberry \nPi',
      'lib/assets/images/skills/raspberry_pi_logo.png',
    ),
  ];

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
      'Blender',
      'lib/assets/images/skills/blender_logo.png',
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
      'Eagle CAD',
      'lib/assets/images/skills/eagle_cad_logo.png',
    ),
    SkillsData(
      'Empirical \nReasoning',
      'lib/assets/images/skills/empirical_reasoning_logo.png',
    ),
    SkillsData(
      'Entreprenuer \nSkills',
      'lib/assets/images/skills/entreprenurial_skills_logo.png',
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
      'Personal \nQualitites',
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
      'Raspberry \nPi',
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
              Image.network(
                'https://i1.wp.com/saphi.engineering/wp-content/uploads/2019/04/SAPHI-Logo-Landscape-02.png?fit=5334%2C1963&ssl=1',
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
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Saphi',
                      style: TextStyle(
                          color: Color(0xff10d0d6),
                          fontSize: 50,
                          decoration: TextDecoration.underline),
                    ),
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
                          "In addition to my Learning Plan and Proposal, part of my preparation for this project was to create a research document answering the following questions \n\nWhat is AAC?\nWhat are the main types of AAC devices and programs?\nWhy do people use AAC devices and programs?\nwho are the main demographic thay use AAC devices and programs?\nWhat are the beneficial aspects of AAC devices and programs?\nHow Could AAC Programs and devices be improved?\n\n\n After My preparation for this project and researching into Augmentative and Alternative Communication Devices and programs I set out to make my own program. \nI didnt know where to start or even what to use to create my program but after going to my LTI I learnt about Flutter and Dart, which I used to create my program.\nAfter learning Flutter and Dart, and finishing my work I ran into a problem, I accidentally deleted a lot of my work while figuring out Github and how to utilize it. So I had to restart from an old save of my work.\n\n\n While I did complete this project it came with a Few major issues \n\nThese were mostly with saving my work and work life balance, it was already good but I needed to do better because ultimately I had to restart from an old save which sent me back in my project by a lot. \n\nAnother Issue with this project was with my work life balance, even if I heavily catered towards my work it is important to keep a good balance.\n\n\n",
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
              // Projects I learnt
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
                          'Projects',
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
                        itemCount: projects.length,
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
                                    child: Image.asset(projects[index].img),
                                  ),
                                ),
                                Text(projects[index].name,
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
            ],
          ),
        ),
      ),
    );
  }
}

class SaphiDisplay1 extends StatefulWidget {
  const SaphiDisplay1({super.key});

  @override
  State<SaphiDisplay1> createState() => _SaphiDisplay1State();
}

class _SaphiDisplay1State extends State<SaphiDisplay1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: MaterialButton(
        onPressed: () {
          if (mounted) {
            const DropdownMenuItem(
              value: 'energy-release-rate',
              child: Text(
                'Energy Release Rate',
                style: TextStyle(
                  color: Color(0xff10d0d6),
                ),
              ),
            );
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
                          'SAPHI',
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
                            'Term 2 2022 - ???',
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
                  'lib/assets/images/LTIs/saphi/Saphi_logo.png',
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
