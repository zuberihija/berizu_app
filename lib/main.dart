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
        scaffoldBackgroundColor: const Color(0xFFF7F7F7),
        fontFamily: 'Arial',
      ),
      home: const BerizuHome(),
    );
  }
}

class BerizuHome extends StatefulWidget {
  const BerizuHome({super.key});

  @override
  State<BerizuHome> createState() => _BerizuHomeState();
}

class _BerizuHomeState extends State<BerizuHome> {
  int selectedIndex = 0;

  final List<Category> categories = const [
    Category(Icons.phone_iphone, 'Phones'),
    Category(Icons.headphones_outlined, 'Audio'),
    Category(Icons.watch_outlined, 'Wearables'),
    Category(Icons.battery_charging_full, 'Power'),
    Category(Icons.sports_esports_outlined, 'Gaming'),
    Category(Icons.devices_other_outlined, 'Accessories'),
  ];

  final List<Product> products = const [
    Product(
      name: 'iPhone',
      brand: 'Apple',
      price: 'KSh 125,000',
      oldPrice: 'KSh 135,000',
      imageUrl:
          'https://images.unsplash.com/photo-1592286927505-2fd9a5c0f0a1',
    ),
    Product(
      name: 'Wireless Headphones',
      brand: 'Premium Audio',
      price: 'KSh 8,500',
      oldPrice: 'KSh 10,000',
      imageUrl:
          'https://images.unsplash.com/photo-1505740420928-5e560c06d30e',
    ),
    Product(
      name: 'Smart Watch',
      brand: 'Smart Wear',
      price: 'KSh 12,000',
      oldPrice: 'KSh 15,000',
      imageUrl:
          'https://images.unsplash.com/photo-1523275335684-37898b6baf30',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),

      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            // HEADER
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(18, 18, 18, 8),
                child: Row(
                  children: [
                    const Expanded(
                      child: Text(
                        'BERIZU',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 3,
                        ),
                      ),
                    ),

                    Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.shopping_bag_outlined,
                          size: 22,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // SEARCH
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(18, 10, 18, 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'Search technology...',
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(vertical: 16),
                    ),
                  ),
                ),
              ),
            ),

            // HERO
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Container(
                  height: 230,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(26),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        right: -30,
                        top: -20,
                        child: Container(
                          width: 190,
                          height: 190,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white12,
                              width: 35,
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'BERIZU',
                              style: TextStyle(
                                color: Colors.white54,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2,
                              ),
                            ),

                            const SizedBox(height: 12),

                            const Text(
                              'Latest technology.\nMade for you.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                height: 1.1,
                                fontWeight: FontWeight.w800,
                              ),
                            ),

                            const Spacer(),

                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.black,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 12,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: const Text(
                                'Shop now',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // CATEGORIES TITLE
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(18, 30, 18, 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Categories',
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('See all'),
                    ),
                  ],
                ),
              ),
            ),

            // CATEGORIES
            SliverToBoxAdapter(
              child: SizedBox(
                height: 105,
                child: ListView.builder(
                  padding: const EdgeInsets.only(left: 18),
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    final category = categories[index];

                    return Container(
                      width: 82,
                      margin: const EdgeInsets.only(right: 14),
                      child: Column(
                        children: [
                          Container(
                            width: 64,
                            height: 64,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Icon(
                              category.icon,
                              size: 28,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            category.name,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),

            // FEATURED TITLE
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(18, 30, 18, 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Featured products',
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('See all'),
                    ),
                  ],
                ),
              ),
            ),

            // PRODUCTS
            SliverToBoxAdapter(
              child: SizedBox(
                height: 310,
                child: ListView.builder(
                  padding: const EdgeInsets.only(left: 18),
                  scrollDirection: Axis.horizontal,
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return ProductCard(product: products[index]);
                  },
                ),
              ),
            ),

            const SliverToBoxAdapter(
              child: SizedBox(height: 30),
            ),
          ],
        ),
      ),

      // NAVIGATION
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        selectedIndex: selectedIndex,
        onDestinationSelected: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
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

// PRODUCT CARD
class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 210,
      margin: const EdgeInsets.only(right: 15),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // IMAGE
          Expanded(
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(17),
                  child: Image.network(
                    product.imageUrl,
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: const Color(0xFFF1F1F1),
                        child: const Center(
                          child: Icon(
                            Icons.image_not_supported_outlined,
                            size: 45,
                          ),
                        ),
                      );
                    },
                  ),
                ),

                Positioned(
                  top: 10,
                  left: 10,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      'SALE',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 12),

          Text(
            product.brand,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 11,
              fontWeight: FontWeight.w600,
            ),
          ),

          const SizedBox(height: 3),

          Text(
            product.name,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
          ),

          const SizedBox(height: 7),

          Row(
            children: [
              Text(
                product.price,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                ),
              ),

              const Spacer(),

              Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 19,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// CATEGORY MODEL
class Category {
  final IconData icon;
  final String name;

  const Category(this.icon, this.name);
}

// PRODUCT MODEL
class Product {
  final String name;
  final String brand;
  final String price;
  final String oldPrice;
  final String imageUrl;

  const Product({
    required this.name,
    required this.brand,
    required this.price,
    required this.oldPrice,
    required this.imageUrl,
  });
}