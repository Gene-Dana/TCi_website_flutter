import 'package:flutter/material.dart';

class Logo extends AnimatedWidget {
  static final _transformTween1 = Tween<double>(begin: 0, end: -25);
  static final _transformTween3 = Tween<double>(begin: 0, end: 10);
  static final _transformTween4 = Tween<double>(begin: 0, end: -20);
  static final _transformTween5 = Tween<double>(begin: 0, end: -15);
  static final _transformTween6 = Tween<double>(begin: 0, end: -10);

  Logo({Key key, Animation<double> animation})
      : super(key: key, listenable: animation);
  @override
  Widget build(BuildContext context) {
    final animation = listenable as Animation<double>;
    return Stack(
      children: [
        Transform.translate(
            child: Image.asset("/logomain.png"),
            offset: Offset(0, _transformTween6.evaluate(animation))),
        Transform.translate(
            child: Image.asset("/chip1.png"),
            offset: Offset(0, _transformTween1.evaluate(animation))),
        Transform.translate(
            child: Image.asset("/chip2.png"),
            offset: Offset(0, _transformTween1.evaluate(animation))),
        Transform.translate(
            child: Image.asset("/chip3.png"),
            offset: Offset(0, _transformTween3.evaluate(animation))),
        Transform.translate(
            child: Image.asset("/chip4.png"),
            offset: Offset(0, _transformTween4.evaluate(animation))),
        Transform.translate(
            child: Image.asset("/chip5.png"),
            offset: Offset(0, _transformTween5.evaluate(animation))),
        Transform.translate(
            child: Image.asset("/chip6.png"),
            offset: Offset(0, _transformTween6.evaluate(animation))),
      ],
    );
  }
}

class AnimatedLogo extends StatefulWidget {
  @override
  _AnimatedLogoState createState() => _AnimatedLogoState();
}

class _AnimatedLogoState extends State<AnimatedLogo>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.easeInOutSine)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          controller.forward();
        }
      });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Logo(animation: animation);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
