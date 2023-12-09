// packages
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:squidly1408/models/project.dart';

// pages
import '../../../main.dart';

// widgets
import '../../../widgets/header.dart';
import '../../models/project_types.dart';

class ProjectType1 extends StatefulWidget {
  const ProjectType1({
    super.key,
  });

  @override
  State<ProjectType1> createState() => _ProjectType1State();
}

class _ProjectType1State extends State<ProjectType1> {
  // project data
  final _project = ProjectType(
      // title
      'Electronics Projects',
      // image
      'lib/assets/images/project_type1/project_type_image.png',
      // amount
      2,
      // projects
      [
        Project(
          // Text
          'Auslan Glove',
          // link
          'auslan-glove',
        ),
        Project(
          // text
          'AAC app',
          // link
          'aac',
        ),
        Project(
          // text
          'Project Database',
          // link
          'project-database',
        ),
      ]);

  // scaffold
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColour, // black

      // added header which acts as a links / navigation to home / logo
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: Header(
          homePage: false,
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
                                  // image
                                  Image.asset(
                                    _project.img,
                                    fit: BoxFit.contain,
                                  ),
                                  // title
                                  Text(
                                    _project.title,
                                    style: TextStyle(
                                        color: mainColour,
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.04),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  ListView.builder(
                    itemCount: _project.projects.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Stack(
                        children: [
                          // background image
                          Image.asset(
                            _project.projects.length - 1 == index
                                ? index.isEven
                                    ? 'lib/assets/images/project_types/right_bottom.png'
                                    : 'lib/assets/images/project_types/left_bottom.png'
                                : index.isEven
                                    ? 'lib/assets/images/project_types/right_middle.png'
                                    : 'lib/assets/images/project_types/left_middle.png',
                            fit: BoxFit.fitWidth,
                          ),
                          Positioned.fill(
                            child: Align(
                              alignment: index.isEven
                                  ? Alignment.centerLeft
                                  : Alignment.centerRight,
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.65,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 4.0),
                                    child: TextButton.icon(
                                      onPressed: () => {
                                        GoRouter.of(context).go(
                                          '/flutter-projects/${_project.projects[index].key}',
                                        ),
                                      },
                                      // icon
                                      icon: Icon(
                                        Icons.north_west_rounded,
                                        color: secondaryColour3,
                                      ),

                                      // text
                                      label: Text(
                                        _project.projects[index].title,
                                        style: TextStyle(
                                            color: mainColour,
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.04),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      );
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
