import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp(appTitle: 'App Bar'));
}

class MyApp extends StatelessWidget {
  final String appTitle;
  const MyApp({super.key, required this.appTitle});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      //darkTheme: ThemeData.dark(useMaterial3: true),
      home: MonAppBar(title: appTitle),
    );
  }
}

class MonAppBar extends StatelessWidget {
  final String title;
  const MonAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
        backgroundColor: Colors.orangeAccent,
        //elevation: 8,
        toolbarHeight: 100, // Augmente la taille de l'AppBar
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
      ),
      body: const Center(
        child: Text(
          'Bienvenue les codeurs!',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
