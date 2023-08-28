import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

import '../../models/comment.dart';
import '../../models/mentors.dart';
import '../../models/project_resources.dart';
import '../../models/skills.dart';
import '../../widgets/footer.dart';
import '../../widgets/header.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({
    super.key,
  });

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
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
      'Blender',
      'lib/assets/images/skills/blender_logo.png',
    ),
    SkillsData(
      'Communication',
      'lib/assets/images/skills/communication_logo.png',
    ),
    SkillsData(
      'CSS',
      'lib/assets/images/skills/css_logo.png',
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
      'Entreprenurial \nSkills',
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
      'HTML',
      'lib/assets/images/skills/html_logo.png',
    ),
    SkillsData(
      'ICT \nSupport',
      'lib/assets/images/skills/ict_support_logo.png',
    ),
    SkillsData(
      'JavaScript',
      'lib/assets/images/skills/javascript_icon.png',
    ),
    SkillsData(
      'Personal \nQualities',
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

  List<String> stepsToComplete = [
    'Creating a goal for my portfolio.',
    'Understanding what must be part of my portoflio.',
    'Looking at other portfolios for ideas to style my portoflio.',
    'Wire-mapping my portfolio to understand how I want the design to be like.',
    'Coding my portfolio.',
    'Seeking feedback about my portoflio to help improve it.',
    'Implementing the improvements in my portfolio.',
  ];

  List<ProjectResources> resources = [
    ProjectResources(
      'Inspireation',
      'https://github.com/emmabostian/developer-portfolios',
    ),
  ];

  List<Mentors> mentors = [
    Mentors(
      'Clickk',
      'https://clickk.com.au/',
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
                          'Portfolio',
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
                            ('Costs: \$0.00'),
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
                          'This project was part of a school project that I customized to fit my own style and learning, instead of using a website editor like most people, I decided I wanted to code my own portfolio, and through multiple transitions and stylings of my portfolio I ended up getting to where I currently am now, this portfolio you see in front of u.\n\n',
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
