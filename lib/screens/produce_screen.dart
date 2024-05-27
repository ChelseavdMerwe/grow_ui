import 'package:flutter/material.dart';
import 'package:grow_app_mobile/widgets/image_slider.dart'; 


class ProduceScreen extends StatelessWidget {
const ProduceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.menu, color: Colors.black),
              onPressed: () {},
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Container(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      filled: true,
                      fillColor: Colors.grey[200],
                      prefixIcon: const Icon(Icons.search, color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8)
          ],
        ),
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
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Map',
          ),
        ],
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const Text(
            'See all',
            style: TextStyle(color: Colors.green),
          ),
        ],
      ),
    );
  }
}

class HorizontalList extends StatelessWidget {
  final List<String> items;

  const HorizontalList({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Column(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: AssetImage(items[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                // You can add item labels here if needed
              ],
            ),
          );
        },
      ),
    );
  }
}
