import 'package:flutter/material.dart';

class CustomTransitions {
  var duration = const Duration(milliseconds: 700);

  PageRouteBuilder bottomToUpSlideTransitionPageRouteBuilder(Widget page) {
    return PageRouteBuilder(
      transitionDuration: duration,
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.easeInOut;

        final tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var curvedAnimation = CurvedAnimation(parent: animation, curve: curve);

        return SlideTransition(
          position: tween.animate(curvedAnimation),
          child: child,
        );
      },
    );
  }

  PageRouteBuilder rightToLeftSlideTransitionPageBuilder(Widget page) {
    return PageRouteBuilder(
      transitionDuration: duration,
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.easeInOut;

        final tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var curvedAnimation = CurvedAnimation(parent: animation, curve: curve);

        return SlideTransition(
          position: tween.animate(curvedAnimation),
          child: child,
        );
      },
    );
  }

  PageRouteBuilder leftToRightSlideTransitionPageBuilder(Widget page) {
    return PageRouteBuilder(
      transitionDuration: duration,
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(-1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.easeInOut;

        final tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var curvedAnimation = CurvedAnimation(parent: animation, curve: curve);

        return SlideTransition(
          position: tween.animate(curvedAnimation),
          child: child,
        );
      },
    );
  }

  PageRouteBuilder topToBottomSlideTransitionPageBuilder(Widget page) {
    return PageRouteBuilder(
      transitionDuration: duration,
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, -1.0);
        const end = Offset.zero;
        const curve = Curves.easeInOut;

        final tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var curvedAnimation = CurvedAnimation(parent: animation, curve: curve);

        return SlideTransition(
          position: tween.animate(curvedAnimation),
          child: child,
        );
      },
    );
  }

  PageRouteBuilder scaleTransitionPageRouteBuilder(Widget page) {
    return PageRouteBuilder(
      transitionDuration: duration,
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = 0.0;
        const end = 1.0;
        const curve = Curves.easeInOut;

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

  PageRouteBuilder fadeTransitionPageRouteBuilder(Widget page) {
    return PageRouteBuilder(
      transitionDuration: duration,
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = 0.0;
        const end = 1.0;
        const curve = Curves.easeInOut;

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

  PageRouteBuilder rotateTransitionPageRouteBuilder(Widget page) {
    return PageRouteBuilder(
      transitionDuration: duration,
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = 0.0;
        const end = 1.0;
        const curve = Curves.easeInOut;

        final tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var curvedAnimation = CurvedAnimation(parent: animation, curve: curve);

        return RotationTransition(
          turns: tween.animate(curvedAnimation),
          child: child,
        );
      },
    );
  }

  PageRouteBuilder sizeTransitionPageRouteBuilder(Widget page) {
    return PageRouteBuilder(
      transitionDuration: duration,
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = 0.0;
        const end = 1.0;
        const curve = Curves.easeInOut;

        final tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var curvedAnimation = CurvedAnimation(parent: animation, curve: curve);

        return SizeTransition(
          sizeFactor: tween.animate(curvedAnimation),
          child: child,
        );
      },
    );
  }

  PageRouteBuilder slideTransitionPageRouteBuilder(Widget page) {
    return PageRouteBuilder(
      transitionDuration: duration,
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
