import 'package:flutter/material.dart';

class CustomTransitions {
  PageRouteBuilder bottomToUpSlideTransitionPageRouteBuilder(Widget page, BuildContext context) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.decelerate;
        const duration = Duration(milliseconds: 1500);

        final tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var curvedAnimation = CurvedAnimation(parent: animation, curve: curve);
        var scaleAnimation = Tween(begin: begin, end: end).animate(
          CurvedAnimation(parent: animation, curve: curve, reverseCurve: curve),
        );
        return SlideTransition(
          position: tween.animate(curvedAnimation),
          child: child,
        );
      },
    );
  }

  PageRouteBuilder rightToLeftSlideTransitionPageBuilder(Widget page, BuildContext context) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.easeInOut;
        const duration = Duration(milliseconds: 1500);

        final tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var curvedAnimation = CurvedAnimation(parent: animation, curve: curve);
        var scaleAnimation = Tween(begin: begin, end: end).animate(
          CurvedAnimation(parent: animation, curve: curve, reverseCurve: curve),
        );
        return SlideTransition(
          position: tween.animate(curvedAnimation),
          child: child,
        );
      },
    );
  }

  PageRouteBuilder leftToRightSlideTransitionPageBuilder(Widget page, BuildContext context) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(-1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.easeInOut;
        const duration = Duration(milliseconds: 1500);

        final tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var curvedAnimation = CurvedAnimation(parent: animation, curve: curve);
        var scaleAnimation = Tween(begin: begin, end: end).animate(
          CurvedAnimation(parent: animation, curve: curve, reverseCurve: curve),
        );
        return SlideTransition(
          position: tween.animate(curvedAnimation),
          child: child,
        );
      },
    );
  }

  PageRouteBuilder topToBottomSlideTransitionPageBuilder(Widget page, BuildContext context) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, -1.0);
        const end = Offset.zero;
        const curve = Curves.easeInOut;
        const duration = Duration(milliseconds: 1500);

        final tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var curvedAnimation = CurvedAnimation(parent: animation, curve: curve);
        var scaleAnimation = Tween(begin: begin, end: end).animate(
          CurvedAnimation(parent: animation, curve: curve, reverseCurve: curve),
        );
        return SlideTransition(
          position: tween.animate(curvedAnimation),
          child: child,
        );
      },
    );
  }

  PageRouteBuilder scaleTransitionPageRouteBuilder(Widget page, BuildContext context) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = 0.0;
        const end = 1.0;
        const curve = Curves.easeInOut;
        const duration = Duration(milliseconds: 1500);

        final tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var curvedAnimation = CurvedAnimation(parent: animation, curve: curve);
        var scaleAnimation = Tween(begin: begin, end: end).animate(
          CurvedAnimation(parent: animation, curve: curve, reverseCurve: curve),
        );
        return ScaleTransition(
          scale: scaleAnimation,
          child: child,
        );
      },
    );
  }

  PageRouteBuilder fadeTransitionPageRouteBuilder(Widget page, BuildContext context) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = 0.0;
        const end = 1.0;
        const curve = Curves.easeInOut;
        const duration = Duration(milliseconds: 1500);

        final tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var curvedAnimation = CurvedAnimation(parent: animation, curve: curve);
        var scaleAnimation = Tween(begin: begin, end: end).animate(
          CurvedAnimation(parent: animation, curve: curve, reverseCurve: curve),
        );
        return FadeTransition(
          opacity: tween.animate(curvedAnimation),
          child: child,
        );
      },
    );
  }

  PageRouteBuilder rotateTransitionPageRouteBuilder(Widget page, BuildContext context) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = 0.0;
        const end = 1.0;
        const curve = Curves.easeInOut;
        const duration = Duration(milliseconds: 1500);

        final tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var curvedAnimation = CurvedAnimation(parent: animation, curve: curve);
        var scaleAnimation = Tween(begin: begin, end: end).animate(
          CurvedAnimation(parent: animation, curve: curve, reverseCurve: curve),
        );
        return RotationTransition(
          turns: tween.animate(curvedAnimation),
          child: child,
        );
      },
    );
  }

  PageRouteBuilder sizeTransitionPageRouteBuilder(Widget page, BuildContext context) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = 0.0;
        const end = 1.0;
        const curve = Curves.easeInOut;
        const duration = Duration(milliseconds: 1500);

        final tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var curvedAnimation = CurvedAnimation(parent: animation, curve: curve);
        var scaleAnimation = Tween(begin: begin, end: end).animate(
          CurvedAnimation(parent: animation, curve: curve, reverseCurve: curve),
        );
        return SizeTransition(
          sizeFactor: tween.animate(curvedAnimation),
          child: child,
        );
      },
    );
  }

  PageRouteBuilder slideTransitionPageRouteBuilder(Widget page, BuildContext context) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) => SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(0.0, 1.0),
          end: Offset.zero,
        ).animate(animation),
        child: child,
      ),
    );
  }
}

enum MyTransitionType {
  bottomToUpSlideTransition,
  rightToLeftSlideTransition,
  leftToRightSlideTransition,
  topToBottomSlideTransition,
  scaleTransition,
  fadeTransition,
  rotateTransition,
  sizeTransition,
  slideTransition,
}
