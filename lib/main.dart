import 'package:flutter/material.dart';

void main() {
  runApp(const BerizuApp());
}

class BerizuApp extends StatelessWidget {
  const BerizuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Berizu',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.black,
          brightness: Brightness.light,
        ),
      ),
      home: const BerizuHome(),
    );
  }
}

class BerizuHome extends StatelessWidget {
  const BerizuHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'BERIZU',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            letterSpacing: 2,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_bag_outlined),
          ),
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SEARCH
            TextField(
              decoration: InputDecoration(
                hintText: 'Search phones, gadgets and more...',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey.shade100,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: BorderSide.none,
                ),
              ),
            ),

            const SizedBox(height: 24),

            // HEADLINE
            const Text(
              'Technology.',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w800,
              ),
            ),

            const Text(
              'Delivered.',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w300,
              ),
            ),

            const SizedBox(height: 20),

            // PROMOTIONAL BANNER
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'NEW ARRIVALS',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Discover the\nlatest technology.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 18),
                  Text(
                    'Shop smartphones, accessories and gadgets.',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 28),

            // CATEGORIES
            const Text(
              'Categories',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 14),

            SizedBox(
              height: 105,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  CategoryItem(
                    icon: Icons.phone_iphone,
                    name: 'Phones',
                  ),
                  CategoryItem(
                    icon: Icons.headphones,
                    name: 'Audio',
                  ),
                  CategoryItem(
                    icon: Icons.watch,
                    name: 'Wearables',
                  ),
                  CategoryItem(
                    icon: Icons.battery_charging_full,
                    name: 'Power',
                  ),
                  CategoryItem(
                    icon: Icons.cable,
                    name: 'Cables',
                  ),
                  CategoryItem(
                    icon: Icons.sports_esports,
                    name: 'Gaming',
                  ),
                ],
              ),
            ),

            const SizedBox(height: 28),

            // FEATURED PRODUCTS
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Featured',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('View all'),
                ),
              ],
            ),

            const SizedBox(height: 10),

            SizedBox(
              height: 270,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  ProductCard(
                    name: 'iPhone',
                    price: 'KSh 125,000',
                    imageUrl:
                        'https://images.unsplash.com/photo-1592286927505-2fd9a5c0f0a1',
                  ),
                  ProductCard(
                    name: 'Wireless Headphones',
                    price: 'KSh 8,500',
                    imageUrl:
                        'https://images.unsplash.com/photo-1505740420928-5e560c06d30e',
                  ),
                  ProductCard(
                    name: 'Smart Watch',
                    price: 'KSh 12,000',
                    imageUrl:
                        'https://images.unsplash.com/photo-1523275335684-37898b6baf30',
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),

      // BOTTOM NAVIGATION
      bottomNavigationBar: NavigationBar(
        selectedIndex: 0,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.grid_view_outlined),
            selectedIcon: Icon(Icons.grid_view),
            label: 'Shop',
          ),
          NavigationDestination(
            icon: Icon(Icons.shopping_cart_outlined),
            selectedIcon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}

// CATEGORY ITEM
class CategoryItem extends StatelessWidget {
  final IconData icon;
  final String name;

  const CategoryItem({
    super.key,
    required this.icon,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 82,
      margin: const EdgeInsets.only(right: 12),
      child: Column(
        children: [
          Container(
            width: 62,
            height: 62,
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Icon(
              icon,
              size: 28,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            name,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

// PRODUCT CARD
class ProductCard extends StatelessWidget {
  final String name;
  final String price;
  final String imageUrl;

  const ProductCard({
    super.key,
    required this.name,
    required this.price,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190,
      margin: const EdgeInsets.only(right: 14),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.network(
                imageUrl,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: Colors.grey.shade200,
                    child: const Center(
                      child: Icon(
                        Icons.image_not_supported_outlined,
                        size: 50,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),

          const SizedBox(height: 12),

          Text(
            name,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),

          const SizedBox(height: 5),

          Text(
            price,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}