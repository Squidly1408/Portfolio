import 'package:flutter/material.dart';

import '../../widgets/footer.dart';
import '../../widgets/header.dart';
import '../../widgets/navigation_bar.dart';

class LTICLickk extends StatefulWidget {
  const LTICLickk({super.key});

  @override
  State<LTICLickk> createState() => _LTICLickkState();
}

class _LTICLickkState extends State<LTICLickk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(240, 23, 23, 23),
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.1),
        child: const Appbar(),
      ),
      body: DefaultTabController(
        length: 3,
        child: ListView(
          children: [
            Image.asset(
              'lib/assets/images/LTIs/Clickk/Clickk_logo_banner.png',
              fit: BoxFit.contain,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.03),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '\nAbout',
                  style: TextStyle(
                    color: Color(0xff03767b),
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.03),
              child: const Text(
                'Clickk is a local business in Newcastle that makes websites for businesses across Australia, they are Serious about creating awesome sites, designes and growth for SMEs.\n\n\n',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.03),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '\nProjects',
                  style: TextStyle(
                    color: Color(0xff03767b),
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.03),
              child: const Text(
                'At my time at Clickk I was learning the steps taken by Clickk to create websites, things like creating a theme, finding fonts, getting images, creating a wireframe, etc.\nFrom that I started to create my own website, a website to randomly generate numbers at will.\n\n\n',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.03),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '\nImages',
                  style: TextStyle(
                    color: Color(0xff03767b),
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.03),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: Image.asset(
                            'lib/assets/images/LTIs/Clickk/how_to_do.jpg',
                            fit: BoxFit.contain),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: Image.asset(
                            'lib/assets/images/LTIs/Clickk/front_final_structre.jpg',
                            fit: BoxFit.contain),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.03),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: Image.asset(
                            'lib/assets/images/LTIs/Clickk/street_picture.PNG',
                            fit: BoxFit.contain),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: Image.asset(
                            'lib/assets/images/LTIs/Clickk/me_working_on_website.png',
                            fit: BoxFit.contain),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            PreferredSize(
              preferredSize:
                  Size.fromHeight(MediaQuery.of(context).size.height * 0.1),
              child: const Footer(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const NavBar(),
    );
  }
}

class LTIClickkDisplay extends StatefulWidget {
  const LTIClickkDisplay({super.key});

  @override
  State<LTIClickkDisplay> createState() => _LTIClickkDisplayState();
}

class _LTIClickkDisplayState extends State<LTIClickkDisplay> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: MaterialButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const LTICLickk(),
            ),
          );
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            color: const Color.fromARGB(255, 23, 23, 23),
            child: FittedBox(
              fit: BoxFit.contain,
              child: Column(
                children: [
                  Image.asset(
                    'lib/assets/images/LTIs/Clickk/Clickk_logo_banner.png',
                    fit: BoxFit.contain,
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        'Clickk,',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 200,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
