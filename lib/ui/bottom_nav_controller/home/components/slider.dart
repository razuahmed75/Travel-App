import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/config/colors.dart';
import 'package:travel_app/config/dimensions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SliderSection extends StatefulWidget {
  const SliderSection({super.key});

  @override
  State<SliderSection> createState() => _SliderSectionState();
}

class _SliderSectionState extends State<SliderSection> {
  int activeIndex = 0;
  var _controller = CarouselController();
  List imageList = [
    'assets/images/travel.png',
    'assets/images/2.webp',
    'assets/images/3.jpg',
    'assets/images/4.jpg',
    'assets/images/5.webp',
    'assets/images/6.webp',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.height200 + 35,
      width: double.maxFinite,
      child: CarouselSlider.builder(
          carouselController: _controller,
          itemCount: imageList.length,
          itemBuilder: (_, index, realIndex) {
            return _buildItems(index, imageList);
          },
          options: CarouselOptions(
            viewportFraction: 1.0,
            onPageChanged: ((index, reason) =>
                setState(() => activeIndex = index)),
          )),
    );
  }

  Widget _buildItems(index, images) => Stack(
        children: [
          Container(
            margin: EdgeInsets.only(
              right: Dimensions.width10 / 2,
              left: Dimensions.width10 / 2,
            ),
            width: double.maxFinite,
            height: Dimensions.height200 + 25,
            decoration: BoxDecoration(
              color: Colors.blue.shade100,
              borderRadius: BorderRadius.circular(Dimensions.r16),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade400,
                  offset: Offset(0, 5),
                  blurRadius: 5,
                ),
                BoxShadow(
                  color: Colors.grey.shade400,
                  offset: Offset(0, -5),
                  blurRadius: 8,
                ),
              ],
              image: DecorationImage(
                image: AssetImage(
                  images[index].toString(),
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.only(bottom: Dimensions.height35),
              child: Align(
                  alignment: Alignment.bottomCenter, child: _buildIndicator())),
        ],
      );

  Widget _buildIndicator() => AnimatedSmoothIndicator(
      onDotClicked: (index) => _controller.animateToPage(index),
      effect: WormEffect(
          activeDotColor: AppColors.whiteColor,
          dotWidth: Dimensions.width10 - 2,
          dotHeight: Dimensions.height10 - 2,
          spacing: Dimensions.width10 - 5,
          dotColor: AppColors.whiteColor.withOpacity(0.6)),
      activeIndex: activeIndex,
      count: imageList.length);
}
