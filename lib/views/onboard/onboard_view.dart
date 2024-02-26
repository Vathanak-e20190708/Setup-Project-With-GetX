import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../constants/const.dart';
import 'widget/dotindicator.dart';
import 'widget/nextbutton.dart';
import 'widget/plantcard.dart';

class OnboardView extends StatefulWidget {
  const OnboardView({super.key});

  @override
  State<OnboardView> createState() => _OnboardViewState();
}

class _OnboardViewState extends State<OnboardView>
    with SingleTickerProviderStateMixin {
  List<Map<String, dynamic>> onboardList(BuildContext context) =>
      <Map<String, dynamic>>[
        <String, dynamic>{
          'image': '1.json',
          'text': "Enjoy your\nLife with Plants",
        },
        <String, dynamic>{
          'image': '2.json',
          'text': "Greener with\nEvery Tap...",
        },
        <String, dynamic>{
          'image': '3.json',
          'text': "Leaf by Leaf,\nGrow Smart",
        },
      ];

  int current = 0;
  final CarouselController _carouselController = CarouselController();
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      bottomNavigationBar: BottomNavigationButton(
        current: current,
        controller: _controller,
        carouselController: _carouselController,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          CarouselSlider(
              carouselController: _carouselController,
              options: CarouselOptions(
                scrollPhysics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                viewportFraction: 1,
                enableInfiniteScroll: true,
                enlargeCenterPage: false,
                aspectRatio: dw(context) / dh(context),
                onPageChanged: (int index, CarouselPageChangedReason reason) {
                  setState(() {
                    current = index;
                  });
                },
              ),
              items: onboardList(context).map((Map<String, dynamic> model) {
                return PlantCard(
                  key: widget.key,
                  model: model,
                  current: current,
                );
              }).toList()),
          DotIndactor(
            key: widget.key,
            current: current,
          ),
        ],
      ),
    );
  }
}
