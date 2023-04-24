import 'package:flutter/material.dart';

class SkillsButtons extends StatefulWidget {
  SkillsButtons({super.key, required this.title, required this.text});

  String title;
  String text;

  @override
  State<SkillsButtons> createState() => _SkillsButtonsState();
}

class _SkillsButtonsState extends State<SkillsButtons> {
  Future<void> showText() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(widget.title),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(widget.text),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Exit'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: MaterialButton(
        onPressed: () => showText(),
        child: Text(
          widget.title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
