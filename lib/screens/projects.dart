import 'package:flutter/material.dart';
import 'package:portfolio/screens/projects/Energy_Realease_Rate.dart';

import '../widgets/header.dart';
import '../widgets/navigation_bar.dart';
import 'LTI/lti_clickk.dart';
import 'LTI/lti_saphi.dart';
import 'projects/aac_project.dart';
import 'projects/glove_project.dart';
import 'projects/raspberry_pi_project.dart';

class ProjectScreen extends StatefulWidget {
  const ProjectScreen({super.key});

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: const Color.fromARGB(240, 23, 23, 23),
        appBar: PreferredSize(
          preferredSize:
              Size.fromHeight(MediaQuery.of(context).size.height * 0.1),
          child: const Appbar(),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.width * 0.7,
            child: RawScrollbar(
              controller: scrollController,
              thumbColor: const Color(0xff03767b),
              thumbVisibility: true,
              child: GridView.count(
                controller: scrollController,
                padding: const EdgeInsetsDirectional.all(8),
                crossAxisCount: 3,
                children: const [
                  AACProjectDisplay(),
                  RaspberryPiProjectDisplay(),
                  GloveProjectDisplay(),
                  EnergyReleaseRateDisplay(),
                  LTIClickkDisplay(),
                  LTISaphiDisplay(),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: const NavBar(),
      ),
    );
  }
}
