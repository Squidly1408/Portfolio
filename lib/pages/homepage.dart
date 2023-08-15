import 'package:flutter/material.dart';

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

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
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
                'lib/assets/images/homepage/homepage_banner.png',
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

//Friendships are limited and dont last forever so remember the times where it mattered the most you, 
//remember the times where you smiled together and the times you laughed. 
//Never take that for granted for one day it may not be there anymore.