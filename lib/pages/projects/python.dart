import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:url_launcher/url_launcher.dart';

import '../../data/python.dart';
import '../../widgets/footer.dart';
import '../../widgets/header.dart';

import '../../widgets/text_banner.dart';
import '../profile.dart';

class PythonProjects extends StatefulWidget {
  const PythonProjects({super.key});

  @override
  State<PythonProjects> createState() => _PythonProjectsState();
}

class _PythonProjectsState extends State<PythonProjects> {
  var skillsScrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff8d818c),
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.0801),
        child: const Header(),
      ),
      bottomNavigationBar: Visibility(
        visible: MediaQuery.of(context).size.width < 1000,
        child: PreferredSize(
          preferredSize:
              Size.fromHeight(MediaQuery.of(context).size.height * 0.1),
          child: const Footer(),
        ),
      ),
      body: SizedBox(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'lib/assets/images/projects/python/portfolio banners.png',
                fit: BoxFit.fitWidth,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 30,
                color: const Color(0xff171717),
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      'Skills:',
                      style: TextStyle(
                          color: Colors.white,
                          decorationStyle: TextDecorationStyle.solid),
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 125,
                color: const Color(0xff171717),
                child: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: RawScrollbar(
                    thumbColor: const Color(0xff03767b),
                    controller: skillsScrollController,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      controller: skillsScrollController,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8),
                          child: SizedBox(
                            width: 100,
                            child: Column(
                              children: [
                                CircleAvatar(
                                  maxRadius: 25,
                                  backgroundColor: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                        pythonSkillImageData[index].data),
                                  ),
                                ),
                                Text(pythonSkillTitleData[index].data,
                                    textAlign: TextAlign.center,
                                    style:
                                        const TextStyle(color: Colors.white)),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              ListView(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: [
                  const TextBanner(
                      title: '4 Sided Pong',
                      text:
                          'With Saphi I was learning Python from a Udemy course, and part of this course I was following, was to code a pong game. I naturally got the idea to make Pong a generational game known by millions harder, I did this by adding Two new sides to worry about, the up and down sides. the upper side of the screen is controlled by the left player, and the bottom part of the screen is controlled by the right hand player.\n\n'),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 70,
                    color: const Color(0xff171717),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: RichText(
                                  text: TextSpan(
                                    text: 'GitHub Link\n',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      decoration: TextDecoration.underline,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        launchUrl(
                                          Uri.parse(
                                              'https://github.com/Squidly1408/Pong-in-python-4-Sided'),
                                        );
                                      },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const TextBanner(
                      title: 'Snake Game',
                      text:
                          'A snake game, what a better way to repersent a learning a code thats named after a snake. Essestially that I made snake the classic game in python.\n\n\n'),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 70,
                    color: const Color(0xff171717),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: RichText(
                                  text: TextSpan(
                                    text: 'GitHub Link\n',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      decoration: TextDecoration.underline,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        launchUrl(
                                          Uri.parse(
                                              'https://github.com/Squidly1408/Snake-in-Python'),
                                        );
                                      },
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
              )
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
            GoRouter.of(context).go('/project/python');
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
