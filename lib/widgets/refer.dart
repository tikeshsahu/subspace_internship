import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class referBar extends StatelessWidget {
  const referBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height / 4.4,
        width: MediaQuery.of(context).size.width / 1.05,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(4),
        ),
        child: CarouselSlider(
          options: CarouselOptions(
              viewportFraction: 1,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 6),
              scrollDirection: Axis.horizontal),
          items: [
            Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  'assets/.....png',
                  fit: BoxFit.fill,
                )
              ],
            ),
            Stack(
              fit: StackFit.expand,
              children: [
                Image.network(
                  'https://img.freepik.com/premium-vector/male-hand-holding-megaphone-with-refer-friend-speech-bubble-loudspeaker-banner-business-marketing-advertising-vector-illustration_175838-3040.jpg?w=1060',
                  fit: BoxFit.fill,
                )
              ],
            ),
            Stack(
              fit: StackFit.expand,
              children: [
                Image.network(
                  'https://img.freepik.com/free-vector/referral-marketing-refer-friend-banner_107791-11591.jpg?w=1060&t=st=1664169034~exp=1664169634~hmac=cdf68b1a8bf7d2e5b2c9d8fbb6c85dbe93b45f6a7568810ed91c09da29d6ce98',
                  fit: BoxFit.fill,
                )
              ],
            ),
          ],
        ));
  }
}