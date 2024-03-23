import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class MobApp extends StatelessWidget {
  const MobApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MobAppPage());
  }
}

class MobAppPage extends StatelessWidget {
  const MobAppPage({super.key});

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
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildMenuItem(
                  title: "Кофе",
                    icon: Icons.coffee
                ),
                buildMenuItem(
                  title: "Десерты",
                    icon: Icons.cake_outlined
                ),
                buildMenuItem(
                  title: "Перекусы",
                    icon: Icons.fastfood_outlined
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
  Widget buildMenuItem({required String title, required IconData icon}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            icon,
          color: Colors.brown,),
          Text(
              title,
              style: const TextStyle(fontSize: 18, color: Colors.brown),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.brown.shade50,
            ),
            child: const Text(
              "Заказать",
              style: TextStyle(fontSize: 16, color: Colors.brown),
            ),
          ),
        ],
      ),
    );
  }
}
