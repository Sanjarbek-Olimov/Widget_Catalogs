import 'package:flutter/material.dart';

class HingePage extends StatefulWidget {
  final Widget child;


  HingePage(
      {Key? key, required this.child})
      : super(key: key);

  @override
  _HingePageState createState() => _HingePageState();
}

class _HingePageState extends State<HingePage> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _rotateAnimation;
  late Animation _slideAnimation;
  late Animation _opacityAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController= AnimationController(
        vsync: this, duration: Duration(milliseconds: 3000));

    _rotateAnimation = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.0, 0.5, curve: Curves.bounceInOut)));

    _slideAnimation = Tween(end: 100.0, begin: 400.0).animate(CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.5, 1.0, curve: Curves.fastOutSlowIn)));

    _opacityAnimation = Tween(end: 1.0, begin: 0.0).animate(CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.5, 1.0, curve: Curves.fastOutSlowIn)));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: (){
          _animationController.forward();
        },
        child: AnimatedBuilder(
          animation: _slideAnimation,
          builder: (context, child) =>Container(
            width: 250,
            height: 250,
            padding: const EdgeInsets.all(10),
            margin: EdgeInsets.only(
              left: 75,
              top: _slideAnimation.value
            ),
            child: RotationTransition(
              turns: _rotateAnimation,
              child: Center(
                child: widget.child,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
