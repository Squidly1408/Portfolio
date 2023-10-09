// packages
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:go_router/go_router.dart';
import 'dart:html' as html;

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
    'Auslan Glove',
    'auslan-glove',
  ),
  Project(
    'AAC app',
    'aac',
  ),
  Project(
    '',
    'project-3',
  ),
  Project(
    '',
    'project-4',
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
];

// pdf downloader
void downloadFile(String url) {
  html.AnchorElement anchorElement = html.AnchorElement(href: url);
  anchorElement.download = url;
  anchorElement.click();
}

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
                      downloadFile('lib/assets/files/Autobiography.docx');
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
                                  'Projects:',
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
                                  itemBuilder: (context, index) =>
                                      TextButton.icon(
                                    onPressed: () => {
                                      GoRouter.of(context).go(
                                        '/projects/${_projects[index].key}',
                                      ),
                                    },
                                    // icon
                                    icon: _projects[index].title.isNotEmpty
                                        ? Icon(
                                            Icons.north_west_rounded,
                                            color: secondaryColour3,
                                          )
                                        : const SizedBox(),
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
                                  itemBuilder: (context, index) =>
                                      TextButton.icon(
                                    onPressed: () => {
                                      launchUrl(
                                        Uri.parse(
                                          _outlearning[index].key.toString(),
                                        ),
                                      ),
                                    },
                                    // icon
                                    icon: _outlearning[index].title.isNotEmpty
                                        ? Icon(
                                            Icons.north_west_rounded,
                                            color: secondaryColour3,
                                          )
                                        : const SizedBox(),
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
