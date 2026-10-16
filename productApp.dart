import 'package:flutter/material.dart';
import 'package:flutter_application_2/productCard.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true, 
          backgroundColor: Colors.indigoAccent, 
          title: const Text(
            "Товары",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Column(
              children: [
                // ----------------------- ПЕРВАЯ СТРОКА ТОВАРОВ -----------------------
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ProductCard(
                        image: "images/Nike.jpg",
                        title: "Nike Air Max",
                        price: "\$120",
                        sale: true,
                        category: "Обувь",
                        rating: 4,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: ProductCard(
                        image: "images/bag.jpg",
                        title: "Leather Bag",
                        price: "\$85",
                        category: "Сумки",
                        rating: 5,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                // ----------------------- ВТОРАЯ СТРОКА ТОВАРОВ -----------------------
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ProductCard(
                        image: "images/headphones.jpg",
                        title: "Headphones",
                        price: "\$210",
                        sale: true,
                        category: "Гаджеты",
                        rating: 3,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: ProductCard(
                        image: "images/smart.jpg",
                        title: "Smart Watch",
                        price: "\$150",
                        category: "Часы",
                        rating: 5,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ), 
      ),
    );
  }
}