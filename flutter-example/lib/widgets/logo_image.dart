
import 'package:flutter/material.dart';


class logoImage extends StatelessWidget {
  logoImage({Key key, AnimationController animationControllerElementOne}) :
    _opacityAnimation = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
      parent: animationControllerElementOne,
      curve: Interval(0, 0.35, curve: Cubic(0.42, 0, 0.58, 1)),
    )),
    _rotationAnimation = Tween<double>(begin: -0.12, end: 0).animate(CurvedAnimation(
      parent: animationControllerElementOne,
      curve: Cubic(0.42, 0, 0.58, 1),
    )),
  super(key: key);
  Animation<double> _opacityAnimation;
  Animation<double> _rotationAnimation;
  
  @override
  Widget build(BuildContext context) {
  
    return FadeTransition(
      opacity: this._opacityAnimation,
      child: RotationTransition(
        turns: this._rotationAnimation,
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(51, 0, 0, 0),
                offset: Offset(0, 20),
                blurRadius: 25,
              ),
            ],
          ),
          child: Image.asset(
            "assets/images/logo.png",
            fit: BoxFit.none,
          ),
        ),
      ),
    );
  }
}