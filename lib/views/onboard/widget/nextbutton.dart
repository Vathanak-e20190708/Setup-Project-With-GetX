import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:plant_shop_app/constants/const.dart';
import 'package:plant_shop_app/home.dart';
import 'package:plant_shop_app/themes/colors/color.dart';

class BottomNavigationButton extends StatelessWidget {
  final int current;
  final CarouselController carouselController;
  final AnimationController controller;

  const BottomNavigationButton({
    super.key,
    required this.current,
    required this.carouselController,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 80),
      child: AnimatedBuilder(
        animation: controller,
        builder: (BuildContext context, Widget? child) {
          if (current == 2) {
            double rotateValue = Tween<double>(begin: 0, end: 180)
                .animate(CurvedAnimation(
                  curve: Curves.easeOut,
                  parent: controller,
                ))
                .value;
            double scaleValue = Tween<double>(begin: 1.0, end: 0.5)
                .animate(CurvedAnimation(
                  curve: Curves.easeOut,
                  parent: controller,
                ))
                .value;
            double slideValue = Tween<double>(begin: 0, end: -120)
                .animate(
                  CurvedAnimation(
                    curve: Curves.easeOut,
                    parent: controller,
                  ),
                )
                .value;
            return Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Transform.translate(
                  offset: Offset(slideValue, 0),
                  child: Transform.rotate(
                    angle: rotateValue * (3.14159265359 / 180),
                    child: Transform.scale(
                      scale: scaleValue,
                      child: child,
                    ),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    sh(30),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          width: 3,
                          color: Color(0xff67864a),
                        ),
                      ),
                      child: TextButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute<Widget>(
                              builder: (BuildContext context) => Home(),
                            ),
                          );
                        },
                        child: const Text(
                          'Get Started',
                          style: TextStyle(
                            color: AppColor.primary,
                            fontSize: 28,
                          ),
                        ),
                      ),
                    ),
                    sh(30),
                  ],
                ),
              ],
            );
          } else {
            return buildButton(context);
          }
        },
        child: buildButton(context),
      ),
    );
  }

  Widget buildButton(BuildContext context) {
    return Hero(
      tag: 'back',
      child: GestureDetector(
        onTap: () {
          HapticFeedback.mediumImpact();
          carouselController.jumpToPage(current + 1);
          controller.forward(from: 0.0);
        },
        child: ScaleTransition(
          scale: Tween<double>(begin: 1.0, end: 1.1).animate(
            CurvedAnimation(
              curve: Curves.easeOut,
              parent: controller,
            ),
          ),
          child: RotationTransition(
            turns: Tween<double>(begin: 0.0, end: 1.0).animate(
              CurvedAnimation(
                curve: Curves.easeOut,
                parent: controller,
              ),
            ),
            child: Container(
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColor.primary,
              ),
              child: Icon(
                Icons.arrow_forward_rounded,
                color: Colors.white,
                size: 50,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
