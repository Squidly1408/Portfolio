import 'dart:math';

import 'package:flutter/material.dart';
import 'package:squidly1408/main.dart';

class ScrollIndicator extends StatefulWidget {
  const ScrollIndicator({super.key, required this.scrollController});
  final ScrollController? scrollController;
  @override
  State<ScrollIndicator> createState() => _ScrollIndicatorState();
}

class _ScrollIndicatorState extends State<ScrollIndicator> {
  IconData _icon = Icons.keyboard_arrow_down_rounded;
  bool _atTop = true;

  void initState() {
    super.initState();
    widget.scrollController!.addListener(() {
      bool _istop = widget.scrollController!.position.pixels == 0;
      if (_istop) {
        setState(() {
          _icon = Icons.keyboard_arrow_down_rounded;
          _atTop = true;
        });
      } else {
        if (widget.scrollController!.position.atEdge) {
          setState(() {
            _icon = Icons.keyboard_arrow_up_rounded;
            _atTop = false;
          });
        } else {
          setState(() {
            _icon = Icons.keyboard_arrow_down_rounded;
            _atTop = true;
          });
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.small(
      elevation: 5,
      onPressed: () {
        if (_atTop) {
          setState(() {
            widget.scrollController!.animateTo(0,
                duration: const Duration(milliseconds: 5),
                curve: Curves.decelerate);
          });
        } else {
          setState(() {
            widget.scrollController!.animateTo(
                widget.scrollController!.position.maxScrollExtent,
                duration: const Duration(milliseconds: 5),
                curve: Curves.decelerate);
          });
        }
      },
      backgroundColor: mainColour2,
      child: Icon(_icon, color: secondaryColour),
    );
  }
}
