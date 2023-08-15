import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../data/saphi.dart';
import '../../widgets/footer.dart';
import '../../widgets/header.dart';
import '../../widgets/image_banner.dart';
import '../../widgets/text_banner.dart';
import '../profile.dart';

class LTISaphi extends StatefulWidget {
  const LTISaphi({super.key});

  @override
  State<LTISaphi> createState() => _LTISaphiState();
}

class _LTISaphiState extends State<LTISaphi> {
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
                'lib/assets/images/LTIs/saphi/Saphi_logo.png',
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
                      itemCount: 16,
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
                                        saphiSkillImageData[index].data),
                                  ),
                                ),
                                Text(saphiSkillTitleData[index].data,
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
                  TextBanner(
                    title: 'About',
                    text:
                        'SAPHI is a team of elite technologists dedicated to creating the next generation of powerful industrial solutions that set the standard for performance and efficiency. Leveraging the very best in robust technologies, SAPHI produce the solutions that keep clients ahead of the market and deliver turn-key solutions spanning from concept design through to continuous improvement & sustainment.\n\n\n',
                  ),
                  TextBanner(
                    title: 'First Project',
                    text:
                        'My first project at SAPHI got me learning Flutter and Dart, flutter is a programming package which is built on top of dart and allows you to create web, IOS, Android, Linux and windows apps. \nI continued to use this knowledge creating my AAC Program.',
                  ),
                  ImageBanner(
                      title: 'First Project Image',
                      image:
                          'lib/assets/images/LTIs/saphi/Saphi_First_Project.PNG'),
                  TextBanner(
                    title: 'Second Project',
                    text:
                        'My Second project consisted of me learning Fusion 360 to design an encolsure for an electronics project SAPHI was conducting, this enclosure needed all the electronics to be held on the inside with two ports out, one for a LED power button and one for a solar panel to be connected to the electronics inside.\n\n\n',
                  ),
                  ImageBanner(
                      title: 'Encolsure Design',
                      image:
                          'lib/assets/images/LTIs/saphi/Saphi_Enclosure_Design1.jpg'),
                  TextBanner(
                    title: 'Third Project',
                    text:
                        'My third project at Saphi was to learn Python, and follow the course material on the given Udemy Learning course. I have done some of the content and still need to do a lot more if I want to become proffcient in it.',
                  ),
                  TextBanner(
                    title: 'Fourth Project',
                    text:
                        'My fourth project got my learning Eagle CAD a PCB design software that I have learnt to model and create circuits, this is an amazing tool to know how to use in the feild of IT and making electronics.',
                  ),
                  TextBanner(
                    title: 'Fifth Project',
                    text:
                        'Saphi got me to learn Blender, its not my favourite program to use and its finically but I couldnt give it a proper chance to learn since my laptop couldnt use it due to the graphics driver on my laptop being old.',
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

class SaphiDisplay1 extends StatefulWidget {
  const SaphiDisplay1({super.key});

  @override
  State<SaphiDisplay1> createState() => _SaphiDisplay1State();
}

class _SaphiDisplay1State extends State<SaphiDisplay1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: MaterialButton(
        onPressed: () {
          if (mounted) {
            GoRouter.of(context).go('/intership/saphi');
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
                          'SAPHI',
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
                            'Term 2 2022 - ???',
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
                  'lib/assets/images/LTIs/saphi/Saphi_logo.png',
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
