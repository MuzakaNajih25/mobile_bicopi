import 'package:flutter/material.dart';

class DrinkMenuPage extends StatelessWidget {
  const DrinkMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    final drinkItems = [
      {
        "name": "Boba",
        "category": "Minuman",
        "description": "Minuman segar dan manis",
        "price": "15.000",
        "image": "assets/boba.png"
      },
      {
        "name": "Chocolatte",
        "category": "Minuman",
        "description": "Minuman coklat lezat",
        "price": "14.000",
        "image": "assets/chocolatte.png"
      },
      {
        "name": "Es Teh",
        "category": "Minuman",
        "description": "Minuman teh segar",
        "price": "13.000",
        "image": "assets/tea.png"
      },
      {
        "name": "Thai Tea",
        "category": "Minuman",
        "description": "Minuman teh khas Thailand",
        "price": "14.000",
        "image": "assets/thai_tea.png"
      },
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
             child: Column(
              children: [
                const SizedBox(height: 40),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () => Navigator.pop(context),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Menu Minuman",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "Bichopi, Indonesia",
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: drinkItems.length,
              itemBuilder: (context, index) {
                final item = drinkItems[index];
                return Card(
                  margin: const EdgeInsets.only(bottom: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    item["image"]!,
                                    width: 80,
                                    height: 80,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      side: const BorderSide(color: Colors.green),
                                    ),
                                  ),
                                  child: const Text(
                                    "Tambah",
                                    style: TextStyle(color: Colors.green),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    item["name"]!,
                                    style: const TextStyle(
                                        fontSize: 16, fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    item["category"]!,
                                    style: const TextStyle(
                                        fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(item["description"]!),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 8,
                        right: 12,
                        child: Text(
                          "Rp ${item["price"]}",
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
