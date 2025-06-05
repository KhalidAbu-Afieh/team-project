import 'package:flutter/material.dart';

//Home Page CLASS
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Search Bar only for Home Page
        Padding(
          padding: const EdgeInsets.all(25),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search...',
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              filled: true,
              fillColor: Colors.white,
            ),
          ),
        ),

        // Recommended Items section
        Expanded(
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            children: const [
              Text(
                'Recommended Items',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              // Add recommended items widgets here
            ],
          ),
        ),
      ],
    );
  }
}
