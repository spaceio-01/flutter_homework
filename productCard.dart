import 'package:flutter/material.dart';
import 'constants.dart'; // Импортируем наши константы

class ProductCard extends StatelessWidget {
  final String image;
  final String title;
  final String price;
  final bool sale;
  final String category; // Требование 1: Новое поле категории
  final int rating;      // Требование 2: Новое поле рейтинга

  ProductCard({
    required this.image,
    required this.title,
    required this.price,
    required this.category, // Добавили в конструктор
    required this.rating,   // Добавили в конструктор
    this.sale = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(paddingSize), // Использование константы
      decoration: BoxDecoration(
        color: cardBgColor, // Требование 5: Слегка кремовый фон карточки
        borderRadius: BorderRadius.circular(cardRadius), // Использование константы
        // Требование 5: Добавили легкую рамку в тон баннера
        border: Border.all(
          color: accentColor.withOpacity(0.2),
          width: 1,
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Чтобы тег и звезды ровнялись по левому краю
        children: [
          // -------- STACK: картинка + SALE badge -------------
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  image,
                  height: imageHeight, // Использование константы
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => Container(
                    height: imageHeight,
                    color: Colors.red,
                    child: const Center(child: Text('Ошибка')),
                  ),
                ),
              ),
              if (sale)
                Positioned(
                  top: 8,
                  left: 8,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      "SALE",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 10),
          // -------- Название + цена -------
          Row(
            children: [
              Flexible(
                child: Text(
                  title,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const Spacer(),
              Text(
                price,
                style: const TextStyle(
                  fontSize: 14,
                  color: priceColor, // Использование константы
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          
          // Требование 1: Мини-тег категории под ценой
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: accentColor, // Под цвет твоего баннера
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              category,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 11,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 6),

          // Требование 2: Рейтинг в виде звёзд (отрисует столько, сколько передано в int)
          Row(
            children: List.generate(5, (index) {
              return Icon(
                index < rating ? Icons.star : Icons.star_border,
                size: 16,
                color: Colors.amber, // Красивый золотой цвет для звезд
              );
            }),
          ),
          const SizedBox(height: 12),

          // Кнопка "Купить" (на всю ширину)
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo, // Цвет в тон баннера
                foregroundColor: Colors.white,
              ),
              onPressed: () {},
              child: const Text('Купить'),
            ),
          ),
          
          const SizedBox(height: 8), // Требование 3: Отступ между кнопками 8px

          // Требование 3: Вторая кнопка “В избранное” на всю ширину
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.indigo, // Текст в тон баннера
                side: const BorderSide(color: Colors.indigo), // Граница в тон баннера
              ),
              onPressed: () {},
              child: const Text("В избранное"),
            ),
          ),
        ],
      ),
    );
  }
}