import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

import '../data/default.dart';

import '../widgets/footer.dart';
import '../widgets/header.dart';
import 'LTI/clickk.dart';
import 'LTI/saphi.dart';
import 'projects/aac.dart';
import 'projects/energy_realease_rate.dart';
import 'projects/glove_project.dart';
import 'projects/python.dart';
import 'projects/raspberry_pi.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  var skillsScrollController = ScrollController();
  var projectsDone = '5';
  var internshipsDone = '2';

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
              Container(
                width: MediaQuery.of(context).size.width,
                height: 160,
                color: const Color(0xff171717),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  maxRadius: 45,
                                  backgroundImage: AssetImage(
                                      'lib/assets/images/profile_picture.png'),
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Lucas Newman',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Column(
                                    children: [
                                      Center(
                                        child: Text(
                                          projectsDone,
                                          style: const TextStyle(
                                              color: Colors.white),
                                        ),
                                      ),
                                      const Center(
                                        child: Text(
                                          'Projects',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Center(
                                        child: Text(
                                          internshipsDone,
                                          style: const TextStyle(
                                              color: Colors.white),
                                        ),
                                      ),
                                      const Center(
                                        child: Text(
                                          'Internships',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: MaterialButton(
                                onPressed: () {
                                  launchUrl(
                                    Uri.parse('https://github.com/Squidly1408'),
                                  );
                                },
                                color: Colors.white,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: const Text(
                                  'GitHub',
                                  style: TextStyle(
                                    color: Color(0xff171717),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: MaterialButton(
                                onPressed: () {
                                  launchUrl(
                                    Uri.parse('lucas.newman140@gmail.com'),
                                  );
                                },
                                color: Colors.white,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: const Text(
                                  'Email',
                                  style: TextStyle(
                                    color: Color(0xff171717),
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
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 170,
                color: const Color(0xff171717),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Text(
                            textAlign: TextAlign.left,
                            'About Me:',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Text(
                            textAlign: TextAlign.center,
                            "Hello I am Lucas Newman, I'm a studnet studing electronics and software engineering. My passions include creating electronics and programs for assistive communication, reading, and coding.",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Visibility(
                          visible: MediaQuery.of(context).size.width > 500,
                          child: const Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Text(
                              textAlign: TextAlign.center,
                              'If you want to contact me or look at my code for my projects I have and or are creating feel free to use the links above.',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        Visibility(
                          visible: MediaQuery.of(context).size.width > 500,
                          child: const Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Text(
                              textAlign: TextAlign.center,
                              'Thankyou for having a look at my portfolio, I coded it myself!',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Text(
                              textAlign: TextAlign.left,
                              'Autobiography',
                              style: TextStyle(
                                color: Colors.white,
                                decorationStyle: TextDecorationStyle.solid,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
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
                      itemCount: 19,
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
                                        defaultSkillImageData[index].data),
                                  ),
                                ),
                                Text(defaultSkillTitleData[index].data,
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
                children: const [
                  PythonDisplay1(),
                  GloveProjectDisplay1(),
                  EnergyReleasedDisplay1(),
                  AacDisplay1(),
                  SaphiDisplay1(),
                  RaspberryPiDisplay1(),
                  ClickkDisplay1(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
