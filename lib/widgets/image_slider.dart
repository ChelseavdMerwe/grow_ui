import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ImageSlider extends StatelessWidget {
  final List<Map<String, String>> images;

  const ImageSlider({Key? key, required this.images}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: images.map((image) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              margin: const EdgeInsets.all(2.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image: AssetImage(image['url']!),
                  fit: BoxFit.contain,
                ),
              ),
              child: Align(
                alignment: Alignment.bottomRight,
                
                child: Container(
                 padding: const EdgeInsets.fromLTRB(4.0, 40.0, 4.0, 0.0), 
                  child: Text(
                    image['name']!,
                  style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontFamily: 'Inter'),
                  ),
                ),
              ),
            );
          },
        );
      }).toList(),
      options: CarouselOptions(
        height: 180.0,
        enlargeCenterPage: true,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        viewportFraction: 0.6,
      ),
    );
  }
}
