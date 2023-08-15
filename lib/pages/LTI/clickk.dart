import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../data/clickk.dart';
import '../../widgets/footer.dart';
import '../../widgets/header.dart';
import '../../widgets/image_banner.dart';
import '../../widgets/text_banner.dart';
import '../profile.dart';

class LTICLickk extends StatefulWidget {
  const LTICLickk({super.key});

  @override
  State<LTICLickk> createState() => _LTICLickkState();
}

class _LTICLickkState extends State<LTICLickk> {
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
                'lib/assets/images/LTIs/clickk/Clickk_logo_banner.png',
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
                                        clickkSkillImageData[index].data),
                                  ),
                                ),
                                Text(clickkSkillTitleData[index].data,
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
                        'Clickk is a local business in Newcastle that makes websites for businesses across Australia, they are Serious about creating awesome sites, designes and growth for SMEs.\n\n\n',
                  ),
                  TextBanner(
                    title: 'Projects',
                    text:
                        'At my time at Clickk I was learning the steps taken by Clickk to create websites, things like creating a theme, finding fonts, getting images, creating a wireframe, etc.\nFrom that I started to create my own website, a website to randomly generate numbers at will.\n\n\n',
                  ),
                  ImageBanner(
                    title: 'How to do sheet',
                    image: 'lib/assets/images/LTIs/clickk/how_to_do.jpg',
                  ),
                  ImageBanner(
                    title: 'Front Final Structure',
                    image:
                        'lib/assets/images/LTIs/clickk/front_final_structre.jpg',
                  ),
                  ImageBanner(
                    title: 'Clickk Street Picture',
                    image: 'lib/assets/images/LTIs/clickk/street_picture.PNG',
                  ),
                  ImageBanner(
                    title: 'Working on website',
                    image:
                        'lib/assets/images/LTIs/clickk/me_working_on_website.png',
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

class ClickkDisplay1 extends StatefulWidget {
  const ClickkDisplay1({super.key});

  @override
  State<ClickkDisplay1> createState() => _ClickkDisplay1State();
}

class _ClickkDisplay1State extends State<ClickkDisplay1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: MaterialButton(
        onPressed: () {
          if (mounted) {
            GoRouter.of(context).go('/internship/clickk');
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
                          'CLICKK',
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
                            'Term 1 2021 - Term 1 2021',
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
                  'lib/assets/images/LTIs/clickk/Clickk_logo_banner.png',
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
