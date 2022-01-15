import 'package:flutter/material.dart';

class AnimationClass extends StatefulWidget {
  static const String id = "animation_class";

  final Widget child;

  const AnimationClass({Key? key, required this.child}) : super(key: key);

  @override
  _AnimationClassState createState() => _AnimationClassState();
}

class _AnimationClassState extends State<AnimationClass>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));

    _animation = Tween(begin: 0.0, end: 1.0).animate(_animationController)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        _animationController.forward();
      },
      child: Transform(
          alignment: FractionalOffset.center,
          transform: Matrix4.identity()..setEntry(3, 2, 0.002)..rotateX(3.14*_animation.value),
          child: widget.child,
      ),
    );
  }
}
