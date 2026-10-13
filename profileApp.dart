import 'package:flutter/material.dart';

class ProfileApp extends StatelessWidget {
  // Убрали const отсюда
  ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Убрали const перед MaterialApp, так как ProfilePage не константный
    return MaterialApp(
      home: ProfilePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ProfilePage extends StatelessWidget {
  // Убрали const отсюда
  ProfilePage({super.key});

  final String name = "Timur Abakirov"; 
  final String age = "16 years old"; 
  final String location = "Bishkek, Kyrgyzstan"; 
  final String bio = "I'm a student";
  
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
              const CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('images/GG.png'),
              ),
              const SizedBox(height: 16),
              
              Text(
                name,
                style: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Bitcount',
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 6),
              
              Text(
                age,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.amberAccent,
                ),
              ),
              const SizedBox(height: 6),
              
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
              const SizedBox(height: 12),
              
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
              
              Text(
                'Interests',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Bitcount',
                  color: Colors.tealAccent,
                ),
              ),
              const SizedBox(height: 8),
              
              Column(
                children: interests.map((interest) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Text(
                    interest,
                    style: const TextStyle(
                      fontSize: 18,
                      fontFamily: 'Pacifico',
                      color: Colors.tealAccent,
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
