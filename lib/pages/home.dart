// packages
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:squidly1408/data/page_list.dart';
import 'package:squidly1408/widgets/scroll_indicator.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';

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
    'Strocoge',
    // link
    'strocoge',
  ),
  Project(
    // text
    'Comnu',
    // link
    'comnu',
  ),
  Project(
    // text
    'Luvium',
    // link
    'luvium',
  ),
  Project(
    // text
    'More Projects',
    // link
    '',
  ),
];

// oulearning list
final _outlearning = [
  Project(
    'UON',
    '',
  ),
  Project(
    'SAPHI',
    '',
  ),
  Project(
    'NuBots',
    '',
  ),
  Project(
    'More Outlearning',
    '',
  ),
];

class _HomeState extends State<Home> {
  late VideoPlayerController _videoPlayerController;
  final ScrollController _scrollController = ScrollController();
  bool isLoaded = false;
  bool ishovering = false;

  @override
  void initState() {
    super.initState();
    _videoPlayerController =
        VideoPlayerController.asset('lib/assets/videos/video.mov')
          ..initialize().then((value) {
            setState(() {
              isLoaded = true;
            });
          });
  }

  // scaffold
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:
          ScrollIndicator(scrollController: _scrollController),
      backgroundColor: secondaryColour, // black

      // added header which acts as a links / navigation to home / logo
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: Header(
          isProject: false,
          requireHome: false,
        ),
      ),

      // Body paragraph
      // need to insert links to pages / sources and all
      body: SizedBox(
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              // banner
              Listener(
                onPointerUp: (event) {
                  _videoPlayerController.value.isPlaying
                      ? _videoPlayerController.pause()
                      : _videoPlayerController.play();
                },
                child: AspectRatio(
                  aspectRatio: 2 / 1,
                  child: isLoaded
                      ? Stack(
                          alignment: Alignment.center,
                          children: [
                            VideoPlayer(_videoPlayerController),
                            MouseRegion(
                              onEnter: (event) {
                                setState(() {
                                  ishovering = true;
                                });
                              },
                              onExit: (event) {
                                setState(() {
                                  ishovering = false;
                                });
                              },
                              child: SizedBox(
                                width: 80,
                                height: 80,
                                child: Visibility(
                                  visible: ishovering,
                                  child: FloatingActionButton.small(
                                    elevation: 5,
                                    onPressed: () {
                                      setState(() {
                                        !_videoPlayerController.value.isPlaying
                                            ? _videoPlayerController.pause()
                                            : _videoPlayerController.play();
                                      });
                                    },
                                    backgroundColor: const Color(0x77171717),
                                    child: Icon(
                                      !_videoPlayerController.value.isPlaying
                                          ? Icons.play_arrow
                                          : Icons.pause,
                                      color: secondaryColour3,
                                      size: 40,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: LoadingAnimationWidget.halfTriangleDot(
                                  color: mainColour, size: 70),
                            ),
                            Text(
                              'Loading',
                              style: TextStyle(
                                color: secondaryColour3,
                              ),
                            ),
                          ],
                        ),
                ),
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
                  height: MediaQuery.of(context).size.width > 500 ? 40 : 100,
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
                          _videoPlayerController.pause();
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
                          _videoPlayerController.pause();
                          addPage(context, '/projects/senior-project');
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
                              'Projects:',
                              style: TextStyle(
                                  color: mainColour,
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.04),
                            ),
                            // projects list
                            ListView.builder(
                              itemCount: _projects.length,
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              padding: const EdgeInsets.all(0),
                              itemExtent: MediaQuery.of(context).size.width >
                                      1000
                                  ? MediaQuery.of(context).size.width * 0.05
                                  : MediaQuery.of(context).size.width * 0.07,
                              itemBuilder: (context, index) => Visibility(
                                visible: _projects[index].title.isNotEmpty,
                                child: TextButton.icon(
                                  onPressed: () {
                                    _videoPlayerController.pause();
                                    if (_projects[index].title ==
                                        'Other Project') {
                                      addPage(context, '/other-projects');
                                    } else {
                                      addPage(context,
                                          '/projects/${_projects[index].key}');
                                    }
                                  },
                                  // icon
                                  icon: Icon(
                                    Icons.north_west_rounded,
                                    color: secondaryColour3,
                                    size: MediaQuery.of(context).size.width *
                                        0.03,
                                  ),
                                  // text
                                  label: Text(
                                    _projects[index].title,
                                    style: TextStyle(
                                        color: secondaryColour3,
                                        fontSize:
                                            MediaQuery.of(context).size.width *
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
                                      MediaQuery.of(context).size.width * 0.04),
                            ),
                            // outlearning list
                            ListView.builder(
                              itemCount: _outlearning.length,
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemExtent: MediaQuery.of(context).size.width >
                                      1000
                                  ? MediaQuery.of(context).size.width * 0.05
                                  : MediaQuery.of(context).size.width * 0.07,
                              itemBuilder: (context, index) => Visibility(
                                visible: _outlearning[index].title.isNotEmpty,
                                child: TextButton.icon(
                                  onPressed: () {
                                    _videoPlayerController.pause();
                                    addPage(context, '/outlearning');
                                  },
                                  // icon
                                  icon: Icon(
                                    Icons.north_west_rounded,
                                    color: secondaryColour3,
                                    size: MediaQuery.of(context).size.width *
                                        0.03,
                                  ),
                                  // text
                                  label: Text(
                                    _outlearning[index].title,
                                    style: TextStyle(
                                        color: secondaryColour3,
                                        fontSize:
                                            MediaQuery.of(context).size.width *
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
                                      MediaQuery.of(context).size.width * 0.04),
                            ),
                            // skills grid
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuery.of(context).size.width > 1000
                                          ? MediaQuery.of(context).size.width *
                                              0.4
                                          : MediaQuery.of(context).size.width *
                                              0.15),
                              child: GridView.builder(
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount:
                                            MediaQuery.of(context).size.width >
                                                    1000
                                                ? 3
                                                : 6,
                                        childAspectRatio:
                                            MediaQuery.of(context).size.width >
                                                    1000
                                                ? 0.05 / 0.05
                                                : 0.005 / 0.005),
                                itemCount: 12,
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemBuilder: (context, index) => Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Listener(
                                    onPointerUp: (event) {
                                      _videoPlayerController.pause();
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
      ),
    );
  }
}
