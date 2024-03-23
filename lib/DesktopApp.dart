import 'package:flutter/material.dart';


class DesktopApp extends StatelessWidget {
  const DesktopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DesktopAppPage());
  }
}

class DesktopAppPage extends StatelessWidget {
  const DesktopAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CoffeeShop'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(
              "https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/2a3cfe74369797.5c2dd0adae475.jpg",
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Мы предлагаем широкий выбор кофейных напитков на любой вкус: "
                    "от классического эспрессо до авторских латте и капучино.",
                style: TextStyle(fontSize: 20, color: Colors.brown),
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                menuItem(
                  "assets/coffee.jpg",
                  "Кофе",
                ),
                menuItem(
                  "assets/cake.jpg",
                  "Десерты",
                ),
                menuItem(
                  "assets/sandwich.jpg",
                  "Перекусы",
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.brown.shade200,
        child: const Icon(Icons.phone),
      ),
    );
  }
  Widget menuItem(String imageAsset, String title) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.brown, width: 4),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Image.asset(
              imageAsset,
              height: 170,
              width: 200,
              fit: BoxFit.scaleDown,
            ),
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 18, color: Colors.brown),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown.shade200,
              ),
              child: const Text(
                "Заказать",
                style: TextStyle(fontSize: 16, color: Colors.brown),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

