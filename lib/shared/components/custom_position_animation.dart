import 'package:flutter/material.dart';

class CustomPositionAnimation extends StatefulWidget {
  const CustomPositionAnimation({required this.child, super.key});

  final Widget child;

  @override
  State<CustomPositionAnimation> createState() => _CustomPositionAnimationState();
}

class _CustomPositionAnimationState extends State<CustomPositionAnimation> {

  bool startAnimation = false;
  int directionFactor = 1;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      if(mounted){
        directionFactor = Directionality.of(context)==TextDirection.rtl?1:-1;
        setState(() {
          startAnimation = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      transform: Matrix4.translationValues(startAnimation?0:(100.0*directionFactor), 0, 0),
      child: widget.child,
    );
  }
}
