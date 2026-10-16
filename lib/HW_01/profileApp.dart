import 'package:flutter/material.dart';

class ProfileApp extends StatelessWidget {
  ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  final String name = "Timur Abakirov"; 
  final String age = "16 years old"; 
  final String location = "Bishkek, Kyrgyzstan"; 
  final String bio = "I'm a student";
  
  // Интересы пользователя
  final List<String> interests = ["💻 Coding", "🎮 Gaming", "⚽ Sports", "📚 Reading"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E2640), 
      appBar: AppBar(
        title: const Text(
          'My Profile', 
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF111827), 
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu, color: Colors.white),
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView( 
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 20),
              // Аватарка пользователя
              const CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('images/GG.png'),
              ),
              const SizedBox(height: 16),
              
              // Имя
              Text(
                name,
                style: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 6),
              
              // Поле с возрастом (Требование задания №1)
              Text(
                age,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.amberAccent,
                ),
              ),
              const SizedBox(height: 6),
              
              // Поле с местом проживания (Требование задания №2)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.location_on, color: Colors.redAccent, size: 18),
                  const SizedBox(width: 4),
                  Text(
                    location,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              
              // Описание (Био)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  bio,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              
              // Заголовок "Интересы" (Требование задания №3)
              const Text(
                'Interests',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.tealAccent,
                ),
              ),
              const SizedBox(height: 10),
              
              // Вывод нескольких строк интересов
              Column(
                children: interests.map((interest) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: const Color(0xFF111827), // Красивая подложка под каждый интерес
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      interest,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.tealAccent,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                )).toList(),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}