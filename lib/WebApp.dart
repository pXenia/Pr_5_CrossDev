import 'package:flutter/material.dart';

class WebApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
              children: [
                Image.network(
                    "https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/2a3cfe74369797.5c2dd0adae475.jpg"),
                const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "CoffeeShop",
                      style: TextStyle(fontSize: 30, color: Colors.brown, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      "Наши бариста - настоящие профессионалы своего дела, которые "
                          "с любовью и искусством приготовят для вас идеальный кофе. """
                          "Мы предлагаем широкий выбор кофейных напитков на любой вкус: "
                          "от классического эспрессо до авторских латте и капучино.",
                      style: TextStyle(fontSize: 20, color: Colors.brown),
                      textAlign: TextAlign.center,
                    ),
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
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.brown,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text("\n Контакты:\n+7(800) 111-22-33\ncafeShop.post@gmail.com\n Aдрec:\n203852, Московская область, город Озёры, проезд Балканская, 903\n",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            )
        )
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
