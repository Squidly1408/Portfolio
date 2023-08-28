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

class PythonProjects extends StatefulWidget {
  const PythonProjects({super.key});

  @override
  State<PythonProjects> createState() => _PythonProjectsState();
}

class _PythonProjectsState extends State<PythonProjects> {
  var skillsScrollController = ScrollController();

// the data for the lists of the page

  final skills = [
    SkillsData(
      'Communication',
      'lib/assets/images/skills/alternative_communcation_icon.png',
    ),
    SkillsData(
      'Empirical \nReasoning',
      'lib/assets/images/skills/empirical_reasoning_logo.png',
    ),
    SkillsData(
      'Python',
      'lib/assets/images/skills/python_logo.png',
    ),
    SkillsData(
      'Trouble \nShooting',
      'lib/assets/images/skills/trouble_shooting_logo.png',
    ),
  ];

  List<String> stepsToComplete = [
    'Follow tutorals and learn from them.',
    'practice by creating my own projects',
  ];

  List<ProjectResources> resources = [
    ProjectResources(
      'Learning resource - Udemy Course',
      'https://www.udemy.com/course/100-days-of-code/learn/lecture/20343499?start=0#overview',
    ),
  ];

  List<Mentors> mentors = [
    Mentors(
      'Saphi',
      'https://saphi.engineering/',
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
                          'Learning Python',
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
                          "4 Sided Pong \n\n\nWith Saphi I was learning Python from a Udemy course, and part of this course I was following, was to code a pong game. I naturally got the idea to make Pong a generational game known by millions harder, I did this by adding Two new sides to worry about, the up and down sides. the upper side of the screen is controlled by the left player, and the bottom part of the screen is controlled by the right hand player.\n\n\n\nSnake Game \n\n\n A snake game, what a better way to represent a learning a code thatU+2019s named after a snake. Essentially that I made snake the classic game in python.\n\n\n",
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

class PythonDisplay1 extends StatefulWidget {
  const PythonDisplay1({super.key});

  @override
  State<PythonDisplay1> createState() => _PythonDisplay1State();
}

class _PythonDisplay1State extends State<PythonDisplay1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: MaterialButton(
        onPressed: () {
          if (mounted) {
            GoRouter.of(context).go('/projects/python');
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
                          'Python Projects',
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
                            'Term 3 2023 - ???',
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
                  'lib/assets/images/projects/python/portfolio banners.png',
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
