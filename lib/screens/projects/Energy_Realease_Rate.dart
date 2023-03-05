import 'package:flutter/material.dart';

import '../../widgets/footer.dart';
import '../../widgets/header.dart';
import '../../widgets/navigation_bar.dart';

class EnergyReleaseRate extends StatefulWidget {
  const EnergyReleaseRate({super.key});

  @override
  State<EnergyReleaseRate> createState() => _EnergyReleaseRateState();
}

class _EnergyReleaseRateState extends State<EnergyReleaseRate> {
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
              'lib/assets/images/projects/Energy_Release_rate/Energy_release_Rate_Logo.png',
              fit: BoxFit.contain,
            ),
            Container(
              color: const Color.fromARGB(255, 23, 23, 23),
              height: 35,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Skills Utilized:',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              color: const Color.fromARGB(255, 23, 23, 23),
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: MaterialButton(
                      onPressed: () {},
                      child: const Text(
                        'Trouble Shooting',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: MaterialButton(
                      onPressed: () {},
                      child: const Text(
                        'Mathematics',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: MaterialButton(
                      onPressed: () {},
                      child: const Text(
                        'Physics',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.03),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '\nPreperation',
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
                'This project Started out by reading "I used to know that: General Science", where I re-learnt about e=mc², \nand how that was the formula to figure out how much energy was in an object.\n\nI then came up with idea usng the previous knowledge and the knowledge that fire converts stored energy into other forms of energy,\nI created a science experiment. This science experiment was to figure out ho much energy would be released from a book if you burnt it.\n\n',
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
                  '\nProject',
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
                'I theorized about how to calculate the answer and eventually came up with the formula Energy Released = (Mass before - Mass after)times the speed of light² / the time it took to burn. \n\nOnce I had the formula down it was time to test so I burnt a book with mass of 163grams.\n\n\n',
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
                  '\nReflect',
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
                'This experiment was intended to figure out the stored energy released from a 163 gram book when on fire, we did this by using the equation ((Mb - Ma) x C²) / T = ER in which we calculated that in total the fire released around 2.131487781892x1013 joules of stored energy from a 163-gram book in 34 minutes. \n\nThe major issue with this is that the experiment will vary on conditions like wind, heat, mass of the book, size and shape of the container, the time it took to burn. leading to varied outcomes and varied calculations. There is no real way to fix this issue since the variables needed to control this experiment are ever changing.\n\n\n',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
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

class EnergyReleaseRateDisplay extends StatefulWidget {
  const EnergyReleaseRateDisplay({super.key});

  @override
  State<EnergyReleaseRateDisplay> createState() =>
      _EnergyReleaseRateDisplayState();
}

class _EnergyReleaseRateDisplayState extends State<EnergyReleaseRateDisplay> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: MaterialButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const EnergyReleaseRate(),
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
                    'lib/assets/images/projects/Energy_Release_rate/Energy_release_Rate_Logo.png',
                    fit: BoxFit.contain,
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        'Energy Release Rate,',
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
