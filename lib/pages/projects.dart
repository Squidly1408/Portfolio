import 'package:flutter/material.dart';

import '../widgets/footer.dart';
import '../widgets/header.dart';

import 'LTI/clickk.dart';
import 'LTI/saphi.dart';
import 'projects/energy_realease_rate.dart';
import 'projects/aac.dart';
import 'projects/glove_project.dart';
import 'projects/python.dart';
import 'projects/raspberry_pi.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
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
                height: 30,
                color: const Color(0xff171717),
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      'Projects:',
                      style: TextStyle(
                          color: Colors.white,
                          decorationStyle: TextDecorationStyle.solid),
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
