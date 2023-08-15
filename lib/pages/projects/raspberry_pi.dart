import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:url_launcher/url_launcher.dart';

import '../../data/rpi.dart';
import '../../widgets/footer.dart';
import '../../widgets/header.dart';
import '../../widgets/image_banner.dart';
import '../../widgets/text_banner.dart';
import '../profile.dart';

class RaspberryPiProjectScreen extends StatefulWidget {
  const RaspberryPiProjectScreen({super.key});

  @override
  State<RaspberryPiProjectScreen> createState() =>
      _RaspberryPiProjectScreenState();
}

class _RaspberryPiProjectScreenState extends State<RaspberryPiProjectScreen> {
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
              Image.asset(
                'lib/assets/images/projects/raspberry_pi/Raspberry_Pi_Logo.png',
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
                      itemCount: 5,
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
                                        rpiSkillImageData[index].data),
                                  ),
                                ),
                                Text(rpiSkillTitleData[index].data,
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
                      title: 'Preperation',
                      text:
                          'Leading up to this project I completed some research onto projects with the Raspberry Pi and Arduino to help decide which I wanted to focus on learning and which will benefit me most to learn. \nI settled onto learning about the Raspberry Pi, answering the following question; \n\n "How can learning from structured projects influence my use of the Raspberry Pi?" \n\nUsing this Question I created a Learning Plan and Project Proposal to help outline my learning;\n\n'),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 70,
                    color: const Color(0xff171717),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: RichText(
                                  text: TextSpan(
                                    text: 'Learning Plan\n',
                                    style: const TextStyle(
                                      fontSize: 10,
                                      color: Colors.white,
                                      decoration: TextDecoration.underline,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        launchUrl(
                                          Uri.parse(
                                              'https://docs.google.com/document/d/1RQ9FJ4E8rQDDBEhwaTasFd9l7nEDR-gV/edit?usp=share_link&ouid=109215238090087040433&rtpof=true&sd=true'),
                                        );
                                      },
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: RichText(
                                  text: TextSpan(
                                    text: 'Proposal\n',
                                    style: const TextStyle(
                                      fontSize: 10,
                                      color: Colors.white,
                                      decoration: TextDecoration.underline,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        launchUrl(
                                          Uri.parse(
                                              'https://1drv.ms/w/s!AlWOX6vBn5L2nXnA6fk5_khHbf6q?e=TNh3SE'),
                                        );
                                      },
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: RichText(
                                  text: TextSpan(
                                    text: 'Research Document\n',
                                    style: const TextStyle(
                                      fontSize: 10,
                                      color: Colors.white,
                                      decoration: TextDecoration.underline,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        launchUrl(
                                          Uri.parse(
                                              'https://1drv.ms/w/s!AlWOX6vBn5L2nXvWgFyUsbhMx2YV?e=wPck6y'),
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
                      title: 'Project',
                      text:
                          'As the first part of my project I emailed PiUpMyLife and asked if I could use their tutorials for my project, \n they ended up getting back to me saying yes, I could use their tutorials for my project and thankyou for asking, I ended up using two of the tutorials; \n\nSetting Up RetroPi\n\nRetroPi is an emulation software designed to emulate PC, Console, and other various types of games on the Raspberry Pi. \nI set-up the software following the tutorial PiUpMyLife gave me as the first part of my project. \n\nI completed the final project using my previous knowledge on the Raspberry Pi from completing the two tutorials I completed previously. \nI ended up using my knowledge on the Raspberry Pi to create a room temperature and humidity sensor, that displays the information by a 8x8 grid of RGB LED lights. \n\n\n'),
                  const ImageBanner(
                      title: 'Retro Pi',
                      image:
                          'lib/assets/images/projects/raspberry_pi/RetroPi_Banner.png'),
                  const ImageBanner(
                      title: 'Sense-HAT',
                      image:
                          'lib/assets/images/projects/raspberry_pi/Sense-hat.png'),
                  const TextBanner(
                      title: 'Reflect',
                      text:
                          'Through out my projects I highlighted a few major key issues both with presenting my work and the work itself; \n\nA major issue was motivation to get started. \n\nPresenting the work in a way that would keep my attention with minimal resources. \n\nIdentifying and troubleshooting mistakes in the tutorials I was following.\n\n\n'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class RaspberryPiDisplay1 extends StatefulWidget {
  const RaspberryPiDisplay1({super.key});

  @override
  State<RaspberryPiDisplay1> createState() => _RaspberryPiDisplay1State();
}

class _RaspberryPiDisplay1State extends State<RaspberryPiDisplay1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: MaterialButton(
        onPressed: () {
          if (mounted) {
            GoRouter.of(context).go('/project/raspberry-pi');
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
                          'Raspberry Pi',
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
                            'Term 3 2022 - Term 3 2022',
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
                  'lib/assets/images/projects/raspberry_pi/Raspberry_Pi_Logo.png',
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
