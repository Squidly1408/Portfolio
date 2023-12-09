// packages
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:go_router/go_router.dart';

// pages
import '../main.dart';

// widgets / models
import '../models/project.dart';
import '../widgets/header.dart';

// stateful widget homepage for future video banner
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

// projects data
final _projects = [
  Project(
    // Text
    'Flutter Projects',
    // link
    'flutter-projects',
  ),
  Project(
    // text
    '',
    // link
    'project-type2',
  ),
  Project(
    // text
    '',
    // link
    'project-type3',
  ),
  Project(
    // text
    '',
    // link
    'project-type4',
  ),
];

// oulearning list
final _outlearning = [
  Project(
    'UON',
    'https://www.newcastle.edu.au/',
  ),
  Project(
    'SAPHI',
    'https://saphi.engineering/',
  ),
  Project(
    'Clickk',
    'https://clickk.com.au/',
  ),
  Project(
    'NuBots',
    'https://nubook.nubots.net/',
  ),
];

class _HomeState extends State<Home> {
  // scaffold
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColour, // black

      // added header which acts as a links / navigation to home / logo
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: Header(
          homePage: true,
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
                  // banner
                  // need to change it to video banner that has hidden controls
                  Image.asset(
                    'lib/assets/images/homepage/homepage_banner.png',
                    fit: BoxFit.fitWidth,
                  ),

                  // About me banner
                  MaterialButton(
                    onPressed: () {
                      launchUrl(
                        Uri.parse(
                            'https://1drv.ms/w/s!AlWOX6vBn5L2qzFFTR6MHaNO9fUX?e=29ap45'),
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
                            'lib/assets/images/homepage/about_me_bannner.png',
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                    ),
                  ),

                  // future pathway plan & senior project link buttons
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height:
                          MediaQuery.of(context).size.width > 500 ? 40 : 100,
                      child: Flex(
                        direction: MediaQuery.of(context).size.width > 500
                            ? Axis.horizontal
                            : Axis.vertical,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // future pathway plan button
                          TextButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(mainColour2),
                              shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                            onPressed: () {
                              launchUrl(
                                Uri.parse(
                                    'https://1drv.ms/w/s!AlWOX6vBn5L2qy0S5opNZevUniHm?e=jAAViR'),
                              );
                            },
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width < 500
                                  ? (MediaQuery.of(context).size.width - 40)
                                  : ((MediaQuery.of(context).size.width * 0.5) -
                                      40),
                              child: Center(
                                child: Text(
                                  'Future Pathway Plan',
                                  style: TextStyle(color: secondaryColour),
                                ),
                              ),
                            ),
                          ),
                          // senior project button
                          TextButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(mainColour2),
                              shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                            onPressed: () {
                              GoRouter.of(context).go(
                                '/projects/senior-project',
                              );
                            },
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width < 500
                                  ? (MediaQuery.of(context).size.width - 40)
                                  : ((MediaQuery.of(context).size.width * 0.5) -
                                      40),
                              child: Center(
                                child: Text(
                                  'Senior Project',
                                  style: TextStyle(color: secondaryColour),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // projects / internships

                  // projects

                  Stack(
                    children: [
                      // background image
                      Image.asset(
                        'lib/assets/images/homepage/projects_banner.png',
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
                                  'Types of Projects:',
                                  style: TextStyle(
                                      color: mainColour,
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.04),
                                ),
                                // projects list
                                ListView.builder(
                                  itemCount: _projects.length,
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) => Visibility(
                                    visible: _projects[index].title.isNotEmpty,
                                    child: TextButton.icon(
                                      onPressed: () => {
                                        GoRouter.of(context).go(
                                          '/${_projects[index].key}',
                                        ),
                                      },
                                      // icon
                                      icon: Icon(
                                        Icons.north_west_rounded,
                                        color: secondaryColour3,
                                      ),
                                      // text
                                      label: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Text(
                                          _projects[index].title,
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
                      )
                    ],
                  ),
                  // outlearning section
                  Stack(
                    children: [
                      // background image
                      Image.asset(
                        'lib/assets/images/homepage/outlearning_banner.png',
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
                                  'outlearning:',
                                  style: TextStyle(
                                      color: mainColour,
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.04),
                                ),
                                // outlearning list
                                ListView.builder(
                                  itemCount: _outlearning.length,
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) => Visibility(
                                    visible:
                                        _outlearning[index].title.isNotEmpty,
                                    child: TextButton.icon(
                                      onPressed: () => {
                                        GoRouter.of(context).go('/outlearning')
                                      },
                                      // icon
                                      icon: Icon(
                                        Icons.north_west_rounded,
                                        color: secondaryColour3,
                                      ),
                                      // text
                                      label: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Text(
                                          _outlearning[index].title,
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
                      )
                    ],
                  ),
                  // skills section
                  Stack(
                    children: [
                      // background image
                      Image.asset(
                        'lib/assets/images/homepage/skills_banner.png',
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
                                  'Tech Skills:',
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
                                              0.15),
                                  child: GridView.builder(
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount:
                                                MediaQuery.of(context)
                                                            .size
                                                            .width >
                                                        1000
                                                    ? 3
                                                    : 6,
                                            childAspectRatio:
                                                MediaQuery.of(context)
                                                            .size
                                                            .width >
                                                        1000
                                                    ? 0.05 / 0.05
                                                    : 0.005 / 0.005),
                                    itemCount: 12,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemBuilder: (context, index) => Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Listener(
                                        onPointerUp: (event) {
                                          if (index == 0) {
                                            launchUrl(
                                              Uri.parse(
                                                'https://roadmap.sh/flutter?s=6537200e035e8d1be72e6e44',
                                              ),
                                            );
                                          }
                                        },
                                        child: Image.asset(
                                          'lib/assets/images/skills/${index + 1}.png',
                                          fit: BoxFit.contain,
                                        ),
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
