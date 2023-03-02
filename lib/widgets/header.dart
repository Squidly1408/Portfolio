import 'package:flutter/material.dart';

import '../screens/projects.dart';

class Appbar extends StatefulWidget {
  const Appbar({super.key});

  @override
  State<Appbar> createState() => _AppbarState();
}

class _AppbarState extends State<Appbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: const Color.fromARGB(255, 23, 23, 23),
      title: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
          child: Image.asset(
            'lib/assets/images/title_image.png',
            fit: BoxFit.contain,
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ProjectScreen(),
                ),
              );
            },
            child: const Text(
              'Projects',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
