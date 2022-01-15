import 'package:flutter/material.dart';
import 'package:mywidgecatalog_less6/pages/animations/animation_class.dart';
import 'package:mywidgecatalog_less6/pages/animations/hinge_page.dart';

class AnimationPage extends StatefulWidget {
  static const String id = "animation_page";

  const AnimationPage({Key? key}) : super(key: key);

  @override
  _AnimationPageState createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  // #animation_1
  // late Animation<double> _animation;

  // #animation_2
  // late Animation<Size> _animation;

  // #animation_3
  // late Animation<Offset> _animation;

  // #animation_4
  late Animation<double> _animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000));

    /// #animation_1
    // _animation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);

    /// #animation_2
    // _animation = Tween<Size>(begin: Size(150, 150), end: Size(200, 200))
    //     .animate(CurvedAnimation(parent: _controller, curve: Curves.bounceIn));

    /// #animation_3
    // _animation = Tween<Offset>(
    //   begin: Offset.zero,
    //   end: Offset(1.5,0),
    // ).animate(CurvedAnimation(parent: _controller, curve: Curves.elasticIn));
    // _controller.addStatusListener((status) {
    //   if (status == AnimationStatus.completed) {
    //     _controller.repeat();
    //   }
    // });

    /// #animation_4
    _animation = Tween<double>(begin: 200.0, end: 120.0).animate(
        CurvedAnimation(
            parent: _controller,
            curve: Interval(0.0, 1.0, curve: Curves.elasticIn)))
      ..addStatusListener((status) {
        {
          if (status == AnimationStatus.completed) {
            _controller.repeat(reverse: true);
          }
        }
      });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Animation"),
        centerTitle: true,
      ),

      /// #animation_1
      // body: Center(
      //   child: FadeTransition(
      //     opacity: _animation,
      //     child: const Image(
      //       height: 200,
      //       width: 200,
      //       image: AssetImage("assets/images/hotel.jpg"),
      //       fit: BoxFit.cover,
      //     ),
      //   ),
      // ),

      /// #animation_2
      // body: Center(
      //   child: AnimatedBuilder(
      //     animation: _animation,
      //     builder: (BuildContext context, Widget? child) {
      //       return Image(
      //         height: _animation.value.height,
      //         width: _animation.value.width,
      //         image: AssetImage("assets/images/heart.png"),
      //         fit: BoxFit.cover,
      //       );
      //     },
      //   ),
      // ),

      /// #animation_3
      // body: SlideTransition(
      //   position: _animation,
      //   child: Padding(
      //     padding: EdgeInsets.all(8.0),
      //     child: Center(
      //         child: FlutterLogo(
      //       size: 150,
      //     )),
      //   ),
      // ),

      /// #animation_4
      // body: AnimatedBuilder(
      //   animation: _animation,
      //   builder: (context, child){
      //     return Center(
      //       child: Container(
      //         height: 150,
      //         width: 150,
      //         margin: EdgeInsets.only(top: _animation.value),
      //         child: const Image(
      //           image: AssetImage("assets/images/hotel.jpg"),
      //           fit: BoxFit.cover,
      //         ),
      //       ),
      //     );
      //   },
      // ),

      /// #animation_5
      // body: Center(
      //   child: AnimationClass(child: Container(
      //     height: 200,
      //     width: 200,
      //     color: Colors.blueAccent,
      //     child: Icon(Icons.accessibility_new, color: Colors.white, size: 50,),
      //   ),),
      // ),

      body: HingePage(
        child: const Text(
          "Animation",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.play_arrow),
      ),
    ));
  }
}
