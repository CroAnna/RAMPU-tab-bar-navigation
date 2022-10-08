import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.orange),
        home: const RootPage());
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: AppBar(
              title: const Text("Tab Navigation Bar"),
              bottom: const TabBar(
                tabs: [
                  Tab(
                    text: "Home",
                    icon: Icon(Icons.home),
                  ),
                  Tab(
                    text: "User",
                    icon: Icon(Icons.person),
                  ),
                  Tab(
                    text: "Buy",
                    icon: Icon(Icons.shopping_cart),
                  ),
                  Tab(
                    text: "Settings",
                    icon: Icon(Icons.settings),
                  )
                ],
              ),
            ),
            body: const TabBarView(
              children: [
                Center(child: Text("Home")),
                Center(child: Text("User")),
                Center(child: Text("Buy")),
                Center(child: Text("Settings"))
              ],
            )));
  }
}
