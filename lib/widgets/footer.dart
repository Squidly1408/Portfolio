import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
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
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          child: TextButton(
            onPressed: () {
              launchUrl(
                Uri.parse('https://github.com/Squidly1408?tab=repositories'),
              );
            },
            child: Column(
              children: const [
                Text(
                  'PH: 0451 142 881',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  'E: lucas.newman140@gmail.com',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  'GitHub LINK',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
