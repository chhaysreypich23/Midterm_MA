import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int qty = 0;

  void increase() {
    setState(() {
      qty++;
    });
  }

  void decrease() {
    setState(() {
      if (qty > 0) qty--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 186, 106, 191),
        leading: const Icon(Icons.menu, color: Colors.white),
        title: const Text(
          'HomeScreen',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.normal,
            fontSize: 20,
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Welcome Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Welcome Pichy!",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 186, 106, 191),
                  child: Icon(Icons.person, color: Colors.white),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Search Bar
            TextField(
              decoration: InputDecoration(
                hintText: "Search",
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Banner
            Container(
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(255, 187, 138, 191),
                    Color.fromARGB(255, 186, 106, 191)
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text(
                        "Phka Blush\nល្អគន់ដូចផ្កា",
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Image.asset(
                    "assets/images/productpka.jpeg",
                    height: 100,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Categories
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Phka Blush",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text("See All",
                    style: TextStyle(
                        color: Color.fromARGB(255, 186, 106, 191))),
              ],
            ),
            const SizedBox(height: 16),

            // Product Grid
            GridView.count(
              crossAxisCount: 3,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              childAspectRatio: 0.65, // 👈 taller cards
              children: [
                _buildProductCard(
                  "ផ្កាឈូក",
                  "10 dollor",
                  "assets/images/pkabg.jpg",
                ),
                _buildProductCard(
                  "ផ្កាកុលាប",
                  "10 dollor",
                  "assets/images/Pkakolab.jpg",
                ),
                _buildProductCard(
                  "ផ្កាផ្គរលាន់",
                  "10 dollor",
                  "assets/images/Phka PhkorLorn.jpg",
                ),
                _buildProductCard(
                  "ផ្ការំដួល",
                  "10 dollor",
                  "assets/images/Phka RomDoul.jpg",
                ),
                _buildProductCard(
                  "ផ្កាអង្គារដី",
                  "10 dollor",
                  "assets/images/Phka AngkeaDey.jpg",
                ),
                _buildProductCard(
                  "ផ្កានគររាជ",
                  "10 dollor",
                  "assets/images/Phka NokorReach.jpg",
                ),
                _buildProductCard(
                  "ផ្កាទឹកដោះ",
                  "10 dollor",
                  "assets/images/Phka TerkDos.jpg",
                ),
              ],
            ),
            const SizedBox(height: 80), // space for bottom bar
          ],
        ),
      ),

      // Bottom Cart Summary
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
          boxShadow: [
            BoxShadow(color: Colors.black12, blurRadius: 10, spreadRadius: 2),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Your Order: Rs. ${qty * 10}.00",
              style: const TextStyle(fontSize: 16),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 186, 106, 191),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {},
              child: const Text("View Cart"),
            ),
          ],
        ),
      ),
    );
  }

  // ✅ Fixed Product card widget
  Widget _buildProductCard(String name, String price, String imagePath) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 6, spreadRadius: 2),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(imagePath, height: 60, fit: BoxFit.contain),
                const SizedBox(height: 8),
                Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 4),
                Text(price, style: const TextStyle(color: Colors.grey)),
              ],
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 186, 106, 191),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: increase,
            child: const Text("Add"),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
