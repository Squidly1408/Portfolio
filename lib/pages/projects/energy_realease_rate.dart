import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../data/err.dart';
import '../../widgets/footer.dart';
import '../../widgets/header.dart';
import '../../widgets/text_banner.dart';
import '../profile.dart';

class EnergyReleaseRate extends StatefulWidget {
  const EnergyReleaseRate({super.key});

  @override
  State<EnergyReleaseRate> createState() => _EnergyReleaseRateState();
}

class _EnergyReleaseRateState extends State<EnergyReleaseRate> {
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
                'lib/assets/images/projects/energy_released/Energy_release_Rate_Logo.png',
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
                      itemCount: 3,
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
                                        aacSkillImageData[index].data),
                                  ),
                                ),
                                Text(aacSkillTitleData[index].data,
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
                      title: 'Preperation',
                      text:
                          'This project Started out by reading "I used to know that: General Science", where I re-learnt about e=mc², \nand how that was the formula to figure out how much energy was in an object.\n\nI then came up with idea usng the previous knowledge and the knowledge that fire converts stored energy into other forms of energy,\nI created a science experiment. This science experiment was to figure out ho much energy would be released from a book if you burnt it.\n\n'),
                  TextBanner(
                      title: 'Project',
                      text:
                          'I theorized about how to calculate the answer and eventually came up with the formula Energy Released = (Mass before - Mass after)times the speed of light² / the time it took to burn. \n\nOnce I had the formula down it was time to test so I burnt a book with mass of 163grams.\n\n\n'),
                  TextBanner(
                      title: 'Reflect',
                      text:
                          'This experiment was intended to figure out the stored energy released from a 163 gram book when on fire, we did this by using the equation ((Mb - Ma) x C²) / T = ER in which we calculated that in total the fire released around 2.131487781892x1013 joules of stored energy from a 163-gram book in 34 minutes. \n\nThe major issue with this is that the experiment will vary on conditions like wind, heat, mass of the book, size and shape of the container, the time it took to burn. leading to varied outcomes and varied calculations. There is no real way to fix this issue since the variables needed to control this experiment are ever changing.\n\n\n'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class EnergyReleasedDisplay1 extends StatefulWidget {
  const EnergyReleasedDisplay1({super.key});

  @override
  State<EnergyReleasedDisplay1> createState() => _EnergyReleasedDisplay1State();
}

class _EnergyReleasedDisplay1State extends State<EnergyReleasedDisplay1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: MaterialButton(
        onPressed: () {
          if (mounted) {
            GoRouter.of(context).go('/project/energy-release-rate');
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
                          'Energy Released',
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
                  'lib/assets/images/projects/energy_released/Energy_release_Rate_Logo.png',
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
