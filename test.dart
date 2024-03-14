import 'package:flutter/material.dart';


void main() {
  runApp(
    MaterialApp(
      title: 'Named Routes Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => const FirstScreen(),
        '/second': (context) => const SecondScreen(),
        '/third': (context) =>  const StorePage(),
      },
    ),
  );
}
class  SecondScreen extends StatelessWidget {
const SecondScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Регистрация'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const TextField(
              decoration: InputDecoration(
                labelText: 'Логин',
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Пароль',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('Зарегистрироваться'),
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
            ),
          ],
        ),
      ),
    );
  }
}
class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Авторизация'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const TextField(
              decoration: InputDecoration(
                labelText: 'Логин',
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Пароль',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('Авторизоваться'),
              onPressed: () {
                Navigator.pushNamed(context, '/third');
              },
            ),
            TextButton(
              child: const Text('Еще не зарегистрированны?'),
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
            ),

          ],
        ),
      ),
    );
  }
}
class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Fruit Store'),
        ),
        body: GridView.count(
            crossAxisCount: 2,
            children: const <Widget>[

    ],
    ),
    );
  }

  // ignore: unused_element
  Widget _buildProductContainer(String name, String imageUrl, String price) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.network(imageUrl, height: 100),
          const SizedBox(height: 10),
          Text(name),
          Text('Price: $price'),
        ],
      ),
    );
  }
}