import 'package:flutter/material.dart';
import 'package:grow_app_mobile/widgets/image_slider.dart'; 

class ShopScreen extends StatelessWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GFG Slider"),
      ),
      body: ListView(
        children: const [
          
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'In season',
                     style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontFamily: 'Inter'),
                    ),
                  ),
                  ImageSlider(
                    images: [
                      {'url': 'brocolli.jpg', 'name': 'Brocolli'},
                      {'url': 'chilli.jpg', 'name': 'Chilli'},
                      {'url': 'garlic.jpg', 'name': 'Garlic'},
                      {'url': 'peas.jpg', 'name': 'Peas'},
                      {'url': 'brocolli.jpg', 'name': 'Brocolli'},
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Categories',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontFamily: 'Inter'),
                    ),
                  ),
                  ImageSlider(
                    images: [
                      {'url': 'brocolli.jpg', 'name': 'Brocolli'},
                      {'url': 'chilli.jpg', 'name': 'Chilli'},
                      {'url': 'garlic.jpg', 'name': 'Garlic'},
                      {'url': 'peas.jpg', 'name': 'Peas'},
                      {'url': 'brocolli.jpg', 'name': 'Brocolli'},
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'By Store',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontFamily: 'Inter'),
                    ),
                  ),
                  ImageSlider(
                    images: [
                      {'url': 'brocolli.jpg', 'name': 'Brocolli'},
                      {'url': 'chilli.jpg', 'name': 'Chilli'},
                      {'url': 'garlic.jpg', 'name': 'Garlic'},
                      {'url': 'peas.jpg', 'name': 'Peas'},
                      {'url': 'brocolli.jpg', 'name': 'Brocolli'},
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
