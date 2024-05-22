// packages
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// pages
import '../../data/page_list.dart';
import '../../main.dart';

// widgets
import '../../models/projects.dart';
import '../../widgets/header.dart';
import '../../widgets/scroll_indicator.dart';

class SeniorProject extends StatefulWidget {
  const SeniorProject({super.key});

  @override
  State<SeniorProject> createState() => _SeniorProjectState();
}

class _SeniorProjectState extends State<SeniorProject> {
  final ScrollController _scrollController = ScrollController();
  // project data
  final _project = Projects(
    // title
    'Senior Project',
    // description
    'What is a senior project? Well, a senior project is a project undertaken by senior students at Cooks Hill Campus, meant to demonstrate your abilities, skills, and knowledge on your chosen subject. My senior project consists of me completing multiple smaller projects which will all come together to make my portfolio, a portfolio that will help me get a degree in software engineering at The University of Newcastle and help me get a job in the field of software development. My projects range in the field of technology, from custom social media apps to electronics to help others communicate, but all my projects share one thing in common, they all have a purpose in the real world.',
    // mentors
    [
      'Dr Jacqueline Bailey - Associate Professor UON',
      'Will Brown - Advisor at Cooks Hill Campus',
      'Alex Newman-Adam - Parent',
      'Jackie Newman-Adam - Parent',
    ],
    // resources
    [
      Resources(
        'Project Proposal',
        'https://1drv.ms/w/c/f6929fc1ab5f8e55/ER9ncuqxWPBPs98E76K57R4BO1vZIQM3mgeboSw7w-aTzA?e=WlFN9y',
      ),
      Resources(
        '',
        'link',
      ),
      Resources(
        '',
        'link',
      ),
      Resources(
        '',
        'link',
      ),
    ],
  );
  final _projectList = [
    Resources(
      'AAC Project',
      'aac',
    ),
    Resources(
      'Auslan Glove',
      'auslan-glove',
    ),
    Resources(
      'Luvium - CHC',
      'luvium-chc',
    ),
    Resources(
      '',
      'project-4',
    ),
  ];

  // scaffold
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColour, // black
      floatingActionButton:
          ScrollIndicator(scrollController: _scrollController),
      // added header which acts as a links / navigation to home / logo
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: Header(
          isProject: false,
          requireHome: true,
        ),
      ),

      // Body paragraph
      // need to insert links to pages / sources and all
      body: SizedBox(
        child: Stack(
          children: [
            SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                children: [
                  // banner / title / description
                  Stack(
                    children: [
                      // background image
                      Image.asset(
                        'lib/assets/images/projects/project_banner.png',
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
                                    _project.title,
                                    style: TextStyle(
                                        color: mainColour,
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.04),
                                  ),
                                  // description
                                  Text(
                                    _project.description,
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

                  // Mentors section
                  Stack(
                    children: [
                      // background image
                      Image.asset(
                        'lib/assets/images/projects/mentors_banner.png',
                        fit: BoxFit.fitWidth,
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.center,
                          child: Center(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // title
                                  Text(
                                    'Mentors:',
                                    style: TextStyle(
                                        color: mainColour,
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.04),
                                  ),
                                  // outlearning list
                                  ListView.builder(
                                    itemCount: _project.mentors.length,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemBuilder: (context, index) => Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 4.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            _project.mentors[index].toString(),
                                            style: TextStyle(
                                                color: secondaryColour3,
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.02),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  // projects section
                  Stack(
                    children: [
                      // background image
                      Image.asset(
                        'lib/assets/images/projects/resources_banner.png',
                        fit: BoxFit.fitWidth,
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.65,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // title
                                  Text(
                                    'Projects:',
                                    style: TextStyle(
                                        color: mainColour,
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.04),
                                  ),
                                  // outlearning list
                                  ListView.builder(
                                    itemCount: _project.mentors.length,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemExtent: MediaQuery.of(context)
                                                .size
                                                .width >
                                            1000
                                        ? MediaQuery.of(context).size.width *
                                            0.05
                                        : MediaQuery.of(context).size.width *
                                            0.07,
                                    itemBuilder: (context, index) => Visibility(
                                      visible:
                                          _projectList[index].text.isNotEmpty,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 4.0),
                                        child: TextButton.icon(
                                          onPressed: () => {
                                            addPage(context,
                                                '/projects/${_projectList[index].link.toString()}')
                                          },
                                          // icon
                                          icon: Icon(
                                            Icons.north_west_rounded,
                                            color: secondaryColour3,
                                            size: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.03,
                                          ),
                                          // text
                                          label: Text(
                                            _projectList[index].text.toString(),
                                            style: TextStyle(
                                                color: secondaryColour3,
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.02),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  // Resources section
                  Stack(
                    children: [
                      // background image
                      Image.asset(
                        'lib/assets/images/projects/mentors_banner.png',
                        fit: BoxFit.fitWidth,
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.65,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // title
                                  Text(
                                    'Resources:',
                                    style: TextStyle(
                                        color: mainColour,
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.04),
                                  ),
                                  // outlearning list
                                  ListView.builder(
                                    itemCount: _project.mentors.length,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemExtent: MediaQuery.of(context)
                                                .size
                                                .width >
                                            1000
                                        ? MediaQuery.of(context).size.width *
                                            0.05
                                        : MediaQuery.of(context).size.width *
                                            0.07,
                                    itemBuilder: (context, index) => Visibility(
                                      visible: _project
                                          .resources[index].text.isNotEmpty,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 4.0),
                                        child: TextButton.icon(
                                          onPressed: () => {
                                            launchUrl(
                                              Uri.parse(_project
                                                  .resources[index].link),
                                            ),
                                          },
                                          // icon
                                          icon: _project.resources[index].text
                                                  .isNotEmpty
                                              ? Icon(
                                                  Icons.north_west_rounded,
                                                  color: secondaryColour3,
                                                  size: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.03,
                                                )
                                              : const SizedBox(),
                                          // text
                                          label: Text(
                                            _project.resources[index].text
                                                .toString(),
                                            style: TextStyle(
                                                color: secondaryColour3,
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.02),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  // skills section
                  Stack(
                    children: [
                      // background image
                      Image.asset(
                        'lib/assets/images/projects/skills_banner.png',
                        fit: BoxFit.fitWidth,
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.center,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // title
                                Text(
                                  'Skills:',
                                  style: TextStyle(
                                      color: mainColour,
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.04),
                                ),
                                // skills grid
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: MediaQuery.of(context)
                                                  .size
                                                  .width >
                                              1000
                                          ? MediaQuery.of(context).size.width *
                                              0.4
                                          : MediaQuery.of(context).size.width *
                                              0.2),
                                  child: GridView.builder(
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount:
                                                MediaQuery.of(context)
                                                            .size
                                                            .width >
                                                        1000
                                                    ? 3
                                                    : 5,
                                            childAspectRatio:
                                                MediaQuery.of(context)
                                                            .size
                                                            .width >
                                                        1000
                                                    ? 0.05 / 0.05
                                                    : 0.00005 / 0.00005),
                                    itemCount: 12,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemBuilder: (context, index) => Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Image.asset(
                                        'lib/assets/images/skills/${index + 1}.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
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
