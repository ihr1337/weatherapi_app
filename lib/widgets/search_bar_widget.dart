import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.maxFinite,
      child: Row(
        children: [
          const Expanded(
              child: TextField(
                  decoration: InputDecoration(
            hintText: 'Search city',
          ))),
          IconButton(onPressed: () {}, icon: const Icon(Icons.send_rounded))
        ],
      ),
    );
  }
}
