// packages
import 'package:flutter/material.dart';

// pages
import '../main.dart';

// widgets / models
import '../models/projects.dart';
import '../widgets/footer.dart';
import '../widgets/header.dart';

// stateful widget homepage for future video banner
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

// temporary projects data
final projects = [
  Projects(
    'Auslan Glove',
    'auslan',
  ),
  Projects(
    'AAC app',
    'aac',
  ),
  Projects(
    'Auslan Glove',
    'auslan',
  ),
  Projects(
    'Auslan Glove',
    'auslan',
  ),
];

// temporary oulearning list
final outlearning = [
  Projects(
    'Newcastle University',
    'uon',
  ),
  Projects(
    'SAPHI',
    'saphi',
  ),
  Projects(
    'Clickk',
    'clickk',
  ),
];

class _HomeState extends State<Home> {
  // scrollbar controller
  ScrollController scrollBar = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColour, // black

      // added header which acts as a links / navigation to home / logo
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: Header(),
      ),

      // Body paragraph / footer
      // need to add projects section (cards)
      // need to add internship / outlearning section
      // need to add scrollable footer
      // need to insert links to pages / sources and all
      body: SizedBox(
        child: Stack(
          children: [
            // adding a RawScrollBar to distinguish the scroll bar from the background
            SingleChildScrollView(
              controller: scrollBar,
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
                    onPressed: () {},
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
                                  itemCount: projects.length,
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) => TextButton(
                                    onPressed: () => {},
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(
                                        projects[index].title,
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
                  // Internships section
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
                                  itemCount: outlearning.length,
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) => TextButton(
                                    onPressed: () => {},
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(
                                        outlearning[index].title,
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
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  // scrollable footer
                  const PreferredSize(
                    preferredSize: Size.fromHeight(30),
                    child: Footer(),
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
