import 'package:flutter/material.dart';

// Categories Page CLASS
class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  final List<Map<String, dynamic>> categories = const [
    {
      'title': 'Vehicles',
      'icon': Icons.directions_car,
      'subcategories': [
        'Cars',
        'Motorcycles',
        'Tractors',
        'Lorry',
        'Car Parts & Accessories',
        'Others',
      ]
    },
    {
      'title': 'Property',
      'icon': Icons.house,
      'subcategories': [
        'Houses for Sale',
        'Houses for Rent',
        'Land for sell',
        'Other',
      ]
    },
    {
      'title': 'Electronics',
      'icon': Icons.electrical_services,
      'subcategories': [
        'Mobile Phones',
        'Laptops & Computers',
        'TVs & Monitors',
        'Gaming Consoles',
        'Cameras',
        'Other',
      ]
    },
    {
      'title': 'Home & Garden',
      'icon': Icons.chair,
      'subcategories': [
        'Furniture',
        'Home Decor',
        'Kitchen Appliances',
        'Tools & Equipment',
        'Other',
      ]
    },
    {
      'title': 'Clothing & Accessories',
      'icon': Icons.checkroom,
      'subcategories': [
        'Men’s Clothing',
        'Women’s Clothing',
        'Shoes',
        'Bags & Wallets',
        'Jewelry & Watches',
        'Other',
      ]
    },
    {
      'title': 'Family',
      'icon': Icons.family_restroom,
      'subcategories': [
        'Baby & Kids Items',
        'Toys & Games',
        'School Supplies',
        'Other',
      ]
    },
    {
      'title': 'Entertainment',
      'icon': Icons.movie,
      'subcategories': [
        'Books',
        'Music Instruments',
        'Movies & DVDs',
        'Tickets (Events, Sports, Concerts)',
      ]
    },
    {
      'title': 'Hobbies & Leisure',
      'icon': Icons.sports_soccer,
      'subcategories': [
        'Sports Equipment',
        'Camping & Outdoor Gear',
        'Collectibles',
      ]
    },
    {
      'title': 'Jobs & Services',
      'icon': Icons.work,
      'subcategories': [
        'Full-time Jobs',
        'Part-time Jobs',
        'Freelance & Gigs',
        'Household Services',
        'Beauty & Wellness',
        'Other',
      ]
    },
    {
      'title': 'Animals',
      'icon': Icons.pets,
      'subcategories': [
        'Sheep',
        'Cows',
        'Bees',
        'Dogs',
        'Cats',
        'Other',
      ]
    },
    {
      'title': 'Free Stuff',
      'icon': Icons.card_giftcard,
      'subcategories': [
        'Giveaways',
        'Donations',
      ]
    },
    {
      'title': 'Lost and Found Items',
      'icon': Icons.search,
      'subcategories': [
        'Lost',
        'You found',
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: categories.length,
      itemBuilder: (context, index) {
        final category = categories[index];
        return Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: ExpansionTile(
            title: Text(
              category['title'],
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            leading: Icon(category['icon']),
            children: List.generate(
              category['subcategories'].length,
              (subIndex) => ListTile(
                title: Text(category['subcategories'][subIndex]),
              ),
            ),
          ),
        );
      },
    );
  }
}
