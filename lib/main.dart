import 'package:flutter/material.dart';

import 'pages/home.dart';
import 'pages/profile.dart';
import 'pages/search.dart';

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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentTab = 0;

  final List<Widget> tabs = [Home(), Profile(), Search()];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Home();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            currentScreen = Search();
            currentTab = 1;
          });
        },
        shape: const CircleBorder(),
        child: const Icon(Icons.search),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              MaterialButton(
                onPressed: () {
                  setState(() {
                    currentScreen = Home();
                    currentTab = 0;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.home,
                        color: currentTab == 0 ? Colors.purple : Colors.grey),
                    Text(
                      'Home',
                      style: TextStyle(
                          color: currentTab == 0 ? Colors.purple : Colors.grey),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    currentScreen = Profile();
                    currentTab = 2;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.person,
                        color: currentTab == 2 ? Colors.purple : Colors.grey),
                    Text(
                      'Home',
                      style: TextStyle(
                          color: currentTab == 2 ? Colors.purple : Colors.grey),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
