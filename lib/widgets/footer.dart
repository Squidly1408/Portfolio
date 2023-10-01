import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../main.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.symmetric(
          horizontal: BorderSide(color: mainColour, width: 4),
        ),
      ),
      height: 30,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: MaterialButton(
          onPressed: () {}, // add an onpressed to login page
          child: SvgPicture.asset('lib/assets/images/logo.svg',
              fit: BoxFit.fitHeight, alignment: Alignment.center),
        ),
      ),
    );
  }
}
