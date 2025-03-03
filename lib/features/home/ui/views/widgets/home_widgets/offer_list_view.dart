import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:fruits_hub/features/home/ui/views/widgets/home_widgets/offer_card.dart';

class OfferListView extends StatelessWidget {
  const OfferListView({
    super.key,
  });

  List<Color> colors() => [
        const Color(0xff5DB957),
        const Color(0xffF4A91F),
      ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 158,
        viewportFraction: 0.9,
        autoPlay: true,
      ),
      items: colors().map((i) {
        return Builder(
          builder: (BuildContext context) {
            return OfferCard(
              bgColor: i,
            );
          },
        );
      }).toList(),
    );
  }
}
