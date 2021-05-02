import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:super_hero_app/feature/dashboard/presentation/dashboard/widgets/fading_text_widget.dart';

class LoadingWidget extends StatefulWidget {
  @override
  _LoadingWidgetState createState() => _LoadingWidgetState();
}

class _LoadingWidgetState extends State<LoadingWidget>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _animation;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 40),
    );
    _animation = Tween<Offset>(
      begin: Offset(0, 0),
      end: Offset(0, -0.5),
    ).animate(_animationController);
    _animationController.forward().whenComplete(() {
      _animationController.repeat(reverse: true);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            child: SlideTransition(
              position: _animation,
              child: AnimatedContainer(
                width: MediaQuery.of(context).size.width,
                duration: Duration(seconds: 0),
                child: Image(
                  image: AssetImage('assets/loading2.jpg'),
                  fit: BoxFit.fitWidth,
                  color: Colors.black.withOpacity(0.6),
                  colorBlendMode: BlendMode.darken,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: FadingTextWidget(
              'Loading',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
