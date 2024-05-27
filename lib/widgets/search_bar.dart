import 'package:flutter/material.dart';


class SearchBar extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onSubmitted;
  

  const SearchBar({
    Key? key,
    required this.controller,
    required this.onSubmitted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          const Icon(Icons.search),
          const SizedBox(width: 8.0),
          Expanded(
            child: TextField(
              controller: controller,
              decoration: const InputDecoration(
                hintText: 'Search...',
                border: InputBorder.none,
              ),
              onSubmitted: (_) => onSubmitted(),
            ),
          ),
        ],
      ),
    );
  }
}
