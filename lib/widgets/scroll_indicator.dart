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

  void initState() {
    super.initState();
    widget.scrollController!.addListener(() {
      bool _istop = widget.scrollController!.position.pixels == 0;
      if (_istop) {
        setState(() {
          _icon = Icons.keyboard_arrow_down_rounded;
        });
      } else {
        if (widget.scrollController!.position.atEdge) {
          setState(() {
            _icon = Icons.keyboard_arrow_up_rounded;
          });
        } else {
          setState(() {
            _icon = Icons.keyboard_arrow_down_rounded;
          });
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.small(
      elevation: 5,
      onPressed: () {},
      backgroundColor: mainColour2,
      child: Icon(_icon, color: secondaryColour),
    );
  }
}
