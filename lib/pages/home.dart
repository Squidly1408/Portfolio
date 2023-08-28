import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../models/projects.dart';

import '../widgets/footer.dart';
import '../widgets/header.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var skillsScrollController = ScrollController();

  final projects = [
    Projects(
      'AAC Project',
      'lib/assets/images/skills/alternative_communcation_icon.png',
      '/projects/aac',
    ),
    Projects(
      'My Portfolio',
      'lib/assets/images/skills/flutter_logo.png',
      '/projects/portfolio',
    ),
    Projects(
      'Raspberry Pi Project',
      'lib/assets/images/skills/raspberry_pi_logo.png',
      '/projects/raspberry-pi',
    ),
    Projects(
      'Python Projects',
      'lib/assets/images/skills/python_logo.png',
      '/projects/python',
    ),
    Projects(
      'Energy Release Rate',
      'lib/assets/images/skills/empirical_reasoning_logo.png',
      '/projects/energy-release-rate',
    ),
    Projects(
      'Auslan Glove Project',
      'lib/assets/images/skills/alternative_communcation_icon.png',
      '/projects/auslan-glove',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1e1e1e),
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
              MaterialButton(
                onPressed: () {},
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    'lib/assets/images/homepage/about_me_bannner.png',
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                color: const Color(0xff171717),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width > 1000
                          ? MediaQuery.of(context).size.width * 0.15
                          : 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Projects:',
                          style: TextStyle(
                              color: Color(0xffffffff),
                              fontSize: 25,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                      GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 1 / 0.4,
                            crossAxisCount:
                                MediaQuery.of(context).size.width > 500
                                    ? MediaQuery.of(context).size.width > 1000
                                        ? 3
                                        : 2
                                    : 1),
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: projects.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: MaterialButton(
                              onPressed: () {
                                GoRouter.of(context).go(projects[index].link);
                              },
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    maxRadius: 25,
                                    backgroundColor: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(projects[index].img),
                                    ),
                                  ),
                                  Text(projects[index].name,
                                      textAlign: TextAlign.center,
                                      style:
                                          const TextStyle(color: Colors.white)),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                color: const Color(0xff171717),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width > 1000
                          ? MediaQuery.of(context).size.width * 0.15
                          : 15.0),
                  child: Flex(
                    direction: MediaQuery.of(context).size.width > 1000
                        ? Axis.horizontal
                        : Axis.vertical,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width > 1000
                            ? MediaQuery.of(context).size.width * 0.2
                            : MediaQuery.of(context).size.width * 0.9,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.network(
                              'https://i1.wp.com/saphi.engineering/wp-content/uploads/2019/04/SAPHI-Logo-Landscape-02.png?fit=5334%2C1963&ssl=1',
                              fit: BoxFit.fitWidth,
                            ),
                            const Text(
                              'SAPHI is a team of elite technologists dedicated to creating the next generation of powerful industrial solutions that set the standard for performance and efficiency. Leveraging the very best in robust technologies, SAPHI produce the solutions that keep clients ahead of the market and deliver turn-key solutions spanning from concept design through to continuous improvement & sustainment.\n\n\n',
                              style: TextStyle(
                                  color: Colors.white,
                                  decorationStyle: TextDecorationStyle.solid),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width > 1000
                            ? MediaQuery.of(context).size.width * 0.2
                            : MediaQuery.of(context).size.width * 0.9,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.network(
                              'data:image/png;base64,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',
                              fit: BoxFit.fitWidth,
                            ),
                            const Text(
                              'The University of Newcastle is a public university in Newcastle, New South Wales, Australia. Established in 1965, it has a primary campus in the Newcastle suburb of Callaghan. The university also operates campuses in Central Coast, Singapore, Newcastle City in the Hunter as well as Sydney.',
                              style: TextStyle(
                                  color: Colors.white,
                                  decorationStyle: TextDecorationStyle.solid),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width > 1000
                            ? MediaQuery.of(context).size.width * 0.2
                            : MediaQuery.of(context).size.width * 0.9,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.network(
                              'data:image/png;base64,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',
                              fit: BoxFit.fitWidth,
                            ),
                            const Text(
                              'Clickk is a local business in Newcastle that makes websites for businesses across Australia, they are Serious about creating awesome sites, designs and growth for SMEs.\n\n\n',
                              style: TextStyle(
                                  color: Colors.white,
                                  decorationStyle: TextDecorationStyle.solid),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
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
