import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.03),
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'About Me',
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
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec tincidunt mi in elit rhoncus congue. Nunc volutpat sollicitudin leo a pulvinar. Curabitur et dictum dui. Etiam orci eros, aliquet sed nunc mollis, hendrerit sollicitudin augue. Proin eget lorem neque. Morbi odio mi, mollis a ligula quis, egestas bibendum enim. Cras viverra elit augue, id finibus purus lobortis vitae. Curabitur sollicitudin ut sem vel volutpat. Nullam tempor nunc vitae ligula scelerisque, nec iaculis sem dictum. Vestibulum a tortor et ligula lobortis ultricies. Sed orci nibh, faucibus vehicula venenatis a, laoreet sed ligula. Mauris quis dolor metus.\n',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.0,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.03),
            child: Align(
              alignment: Alignment.centerLeft,
              child: RichText(
                text: TextSpan(
                  text: 'Autobiography\n',
                  style: const TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      launchUrl(
                        Uri.parse(
                            'https://docs.google.com/document/d/1vowYMuibGD6BagGQV8-EMxDixm-Ay666/edit?usp=share_link&ouid=109215238090087040433&rtpof=true&sd=true'),
                      );
                    },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
