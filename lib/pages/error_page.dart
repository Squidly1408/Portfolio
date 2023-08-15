import 'package:flutter/material.dart';

class ErrorPage extends StatefulWidget {
  const ErrorPage({super.key, required this.error});

  final String error;

  @override
  State<ErrorPage> createState() => _ErrorPageState();
}

class _ErrorPageState extends State<ErrorPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xff10d0d6),
            Color(0xff03767b),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Card(
          color: const Color(0xff171717),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
                child: Image.asset(
                  'lib/assets/images/logo.png',
                  fit: BoxFit.contain,
                ),
              ),
              Center(
                  child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                    'Error - Squidly1408.github.io${widget.error} does not exist',
                    style: const TextStyle(
                        fontSize: 20, color: Color(0xffffffff))),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
