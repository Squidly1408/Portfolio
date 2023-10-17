// packages
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// pages
import '../main.dart';

class ErrorPage extends StatefulWidget {
  const ErrorPage({super.key, required this.error});

  final String error;

  @override
  State<ErrorPage> createState() => _ErrorPageState();
}

class _ErrorPageState extends State<ErrorPage> {
  @override
  Widget build(BuildContext context) {
    // background fade
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [mainColour2, mainColour],
        ),
      ),
      // logo / error text
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Card(
          color: secondaryColour,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: SvgPicture.asset(
                    'lib/assets/images/logo.svg',
                    fit: BoxFit.contain,
                  )),
              // error text
              Center(
                  child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  'Error - Squidly1408.github.io${widget.error} does not exist',
                  style: TextStyle(
                    fontSize: 20,
                    color: secondaryColour3,
                  ),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
