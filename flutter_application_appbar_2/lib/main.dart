import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MonAppBar(title: 'Mon AppBar'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MonAppBar extends StatelessWidget {
  final String title;
  const MonAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text(title, style: const TextStyle(color: Colors.white)),
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: const Icon(Icons.menu, color: Colors.white),
              onPressed: () {
                print('Menu button');
              },
            ),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.notifications_none, color: Colors.white),
                onPressed: () {
                  print('Search button');
                },
              ),
              IconButton(
                icon: const Icon(Icons.search, color: Colors.white),
                onPressed: () {
                  print('More button');
                },
              ),
            ],
            centerTitle: true,
            bottom: const TabBar(
              indicatorColor: Colors.white,
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.home, color: Colors.white),
                  child: Text(
                    'Home',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Tab(
                  icon: Icon(Icons.favorite, color: Colors.white),
                  child: Text(
                    'Favorite',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Tab(
                  icon: Icon(Icons.face, color: Colors.white),
                  child: Text(
                    'Profile',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Tab(
                  icon: Icon(Icons.settings, color: Colors.white),
                  child: Text(
                    'Settings',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[Colors.deepPurple, Colors.purple],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
          ),
          body: const TabBarView(
            children: <Widget>[
              Center(
                child: Center(
                  child: Text('Home', style: TextStyle(fontSize: 30)),
                ),
              ),
              Center(
                child: Text('Favorite', style: TextStyle(fontSize: 30)),
              ),
              Center(
                child: Center(
                  child: Text('Profile', style: TextStyle(fontSize: 30)),
                ),
              ),
              Center(
                child: Center(
                  child: Text('Settings', style: TextStyle(fontSize: 30)),
                ),
              ),
            ],
          ),
        ),
      );
}
