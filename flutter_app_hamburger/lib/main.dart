import 'package:flutter/material.dart';
import 'header.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Colors.teal, centerTitle: true),
        bottomAppBarColor: Colors.teal,
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.orange,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const Hamburger(),
    );
  }
}

class Hamburger extends StatefulWidget {
  const Hamburger({super.key});

  @override
  State<Hamburger> createState() => _HamburgerState();
}

class _HamburgerState extends State<Hamburger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            title: const Text('Deliver Me'),
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart),
              ),
            ],
          ),
          const Header(),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const Text(
                  "phin kan lite",
                  style: TextStyle(
                    fontSize: 300,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.home),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(25)),
        child: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: Row(
            children: [
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add_alert),
                color: Colors.white,
              ),
              const Spacer(),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.turned_in),
                color: Colors.white,
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
